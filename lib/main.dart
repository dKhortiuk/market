import 'package:flutter/material.dart';
import 'core/injections.dart';
import 'ui/screen/market_page.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as dot_env;

void main() async {
  await dot_env.load(fileName: ".env");
  runApp(const MyApp());
  await init();
}

Future<Map<String, dynamic>?> init() async {
  configureDependencies();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Market', home: CryptoPage());
  }
}
