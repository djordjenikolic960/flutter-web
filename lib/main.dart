import 'package:flutter/material.dart';

import 'components/about/about_widget.dart';
import 'components/contact/contact_widget.dart';
import 'components/header/header.dart';
import 'components/home/home_widget.dart';
import 'components/portfolio/portfolio_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const WebPage(),
    );
  }
}

final homeKey = GlobalKey();
final aboutKey = GlobalKey();
final portfolioKey = GlobalKey();
final contactKey = GlobalKey();

class WebPage extends StatelessWidget {
  const WebPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff323647),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      HomeWidget(
                        key: homeKey,
                      ),
                      AboutWidget(
                        key: aboutKey,
                      ),
                      PortfolioWidget(
                        key: portfolioKey,
                      ),
                      ContactWidget(
                        key: contactKey,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Header(),
        ],
      ),
    );
  }
}
