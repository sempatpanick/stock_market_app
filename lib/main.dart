import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_market_app/injection.dart' as di;
import 'package:stock_market_app/presentation/pages/home_page.dart';
import 'package:stock_market_app/presentation/provider/quote_notifier.dart';

void main() {
  di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => di.locator<QuoteNotifier>(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
      ),
    );
  }
}
