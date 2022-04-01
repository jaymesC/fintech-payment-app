import 'package:flutter/material.dart';
import 'package:payment_app/component/colors.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: AppColor.backGroundColor,
        body: Container(
          height: h,
          child: Stack(
            children: [
              _headSection(),
            ],
          ),
        ));
  }

  _headSection() {
    return Container(
      height: 310,
      child: Stack(children: [
        _mainBackground(),
      ]),
    );
  }

  _mainBackground() {
    return Positioned(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('images/background.png'))),
      ),
    );
  }
}
