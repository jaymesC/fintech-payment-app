import 'package:flutter/material.dart';
import 'package:payment_app/component/colors.dart';
import 'package:payment_app/widgets/text_size.dart';

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
              _listBills(),
            ],
          ),
        ));
  }

  _headSection() {
    return Container(
      height: 300,
      child: Stack(children: [
        _mainBackground(),
        _curveImageContainer(),
        _buttonContainer(),
      ]),
    );
  }

  _mainBackground() {
    return Positioned(
      bottom: 10,
      left: 0,
      child: Container(
        height: 290,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/background.png'),
                fit: BoxFit.fitHeight)),
      ),
    );
  }

  _curveImageContainer() {
    return Positioned(
      left: 0,
      right: -2,
      bottom: 10,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.18,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/curve.png'), fit: BoxFit.fitHeight)),
      ),
    );
  }

  _buttonContainer() {
    return Positioned(
      bottom: 30,
      right: 10,
      child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('images/lines.png')),
              boxShadow: [
                BoxShadow(
                    blurRadius: 15,
                    offset: Offset(0, 1),
                    color: Color(0xFF11324d).withOpacity(0.2)),
              ])),
    );
  }

  _listBills() {
    return Positioned(
        top: 310,
        left: 0,
        right: 0,
        bottom: 0,
        child: MediaQuery.removePadding(
          removeTop: true,
          context: context,
          child: ListView.builder(
              itemCount: 4,
              itemBuilder: (_, index) {
                return Container(
                  margin: const EdgeInsets.only(top: 20, right: 20),
                  height: 130,
                  width: MediaQuery.of(context).size.width - 20,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFd8dbe0),
                          offset: Offset(1, 1),
                          blurRadius: 20,
                          spreadRadius: 10,
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          bottomRight: Radius.circular(30))),
                  child: Container(
                    margin: const EdgeInsets.only(top: 10, left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 3, color: Colors.grey),
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage('images/brand1.png'),
                                        fit: BoxFit.fitHeight)),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('KenGen Power',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: AppColor.mainColor,
                                            fontWeight: FontWeight.w700)),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text('ID: 537298',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: AppColor.idColor,
                                            fontWeight: FontWeight.w700)),
                                  ]),
                            ]),
                            SizedText(
                              text: 'Auto pay on 24th May 18',
                              color: AppColor.green,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    // margin: const EdgeInsets.only(right: 20),
                                    child: Container(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 10, 20, 10),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: AppColor.selectBackground),
                                      child: Text('Select',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: AppColor.selectColor,
                                          )),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Container(
                                      // margin: const EdgeInsets.only(right: 20),
                                      child: Column(
                                    children: [
                                      const Text('\$1248.00',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w900,
                                              color: AppColor.mainColor)),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text('Due in 3 days',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                              color: AppColor.idColor)),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                    ],
                                  ))
                                ]),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 35,
                              width: 5,
                              decoration: BoxDecoration(
                                  color: AppColor.halfOval,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      bottomLeft: Radius.circular(30))),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ));
  }
}
