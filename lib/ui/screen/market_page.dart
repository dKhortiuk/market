import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kit/assets/theme.dart';
import 'package:kit/repo/crypto_repo.dart';
import 'package:kit/ui/widget/custom_button.dart';
import 'package:kit/ui/widget/custom_text_field.dart';
import 'package:kit/ui/widget/progress_indicator.dart';

import '../../bloc/bloc.dart';
import '../../core/injections.dart';
import '../../model/market_data_model.dart';
import '../widget/chart.dart';
import '../widget/market_data_widget.dart';

class CryptoPage extends StatefulWidget {
  CryptoPage({Key? key}) : super(key: key);
  final CryptoBloc cryptoBloc = getIt<CryptoBloc>();

  @override
  State<CryptoPage> createState() => _CryptoPageState();
}

class _CryptoPageState extends State<CryptoPage> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 50, 16, 16),
        child: BlocBuilder<CryptoBloc, CryptoState>(
            bloc: widget.cryptoBloc,
            builder: (context, state) {
              return state.map(
                initial: (state) {
                  return state.isLoading
                      ? const ProgressIndicatior()
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CustomTextField(
                                  enabled: true,
                                  controller: textEditingController,
                                  function: (value) {
                                    setState(() {
                                      value.isNotEmpty
                                          ? widget.cryptoBloc
                                              .add(CryptoEvent.enableButton())
                                          : widget.cryptoBloc
                                              .add(const CryptoEvent.initial());
                                    });
                                  },
                                ),
                                CustomButton(
                                  enabled: state.isButtonEnabled,
                                  function: () {
                                    widget.cryptoBloc.add(CryptoEvent.subscribe(
                                        subscribeFilterAssetId:
                                            textEditingController.text));
                                    FocusManager.instance.primaryFocus
                                        ?.unfocus();
                                  },
                                  title: 'Subscribe',
                                ),
                              ],
                            ),
                            const SizedBox(height: 150),
                            const Text(
                              'Enter symbol identifier to get historical prices and real time market price(e.g. BTC/USD or LTC/USD).',
                              textAlign: TextAlign.center,
                              style: TextStyleTheme.title_1,
                            ),
                          ],
                        );
                },
                error: (state) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Cannot find symbol. Probably you have entered wrong or non-existent identifier.',
                          textAlign: TextAlign.center,
                          style: TextStyleTheme.title_1,
                        ),
                        CustomButton(
                          enabled: textEditingController.text.isNotEmpty,
                          function: () {
                            widget.cryptoBloc.add(const CryptoEvent.close());
                            textEditingController.clear();
                          },
                          title: 'Try again',
                        ),
                      ],
                    ),
                  );
                },
                subscribing: (state) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomTextField(
                              enabled: false,
                              controller: textEditingController
                                ..text = state.subscribeFilterAssetId),
                          CustomButton(
                            enabled: textEditingController.text.isNotEmpty,
                            function: () {
                              widget.cryptoBloc.add(const CryptoEvent.close());
                              textEditingController.clear();
                            },
                            title: 'Another symbol',
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      StreamBuilder<MarketDataModel>(
                        stream: state.stream!,
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const ProgressIndicatior();
                          }

                          if (snapshot.connectionState ==
                                  ConnectionState.active &&
                              snapshot.hasData) {
                            return Center(
                              child: MarketDataWidget(
                                marketDataModel: snapshot.data,
                              ),
                            );
                          }
                          return const Padding(
                            padding: EdgeInsets.symmetric(vertical: 16),
                            child: Center(
                              child: Text('No more data'),
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 10),
                      Chart(candles: state.candles)
                    ],
                  );
                },
              );
            }),
      ),
    );
  }

  @override
  void dispose() {
    getIt<CryptoRepo>().channel.sink.close();
    super.dispose();
  }
}
