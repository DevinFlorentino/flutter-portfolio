import 'package:flutter/material.dart';
import 'package:portfolio_app/resume/desktop_body.dart';
import 'package:portfolio_app/resume/mobile_body.dart';
import 'package:portfolio_app/resume/responsive_layout.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Devin Florentino',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void didChangeDependencies() {
    precacheImage(
        const AssetImage("assets/images/DevinFlorentino.jfif"), context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: ResponsiveLayout(
      mobileBody: MobileBody(),
      desktopBody: DesktopBody(),
    ));
  }
}
