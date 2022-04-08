import 'package:flutter/material.dart';
import 'package:payment_app/component/colors.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
        height: h,
        width: w,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/paymentbackground.png'),
                fit: BoxFit.fill)),
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: h * 0.14,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('images/success.png'),
                fit: BoxFit.fitWidth,
              )),
            ),
            Text(
              'Success !',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: AppColor.mainColor),
            ),
            Text(
              'Payment is completed for 2 bills',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColor.idColor),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            Container(
              height: 140,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      width: 2, color: Colors.grey.withOpacity(0.5))),
              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (_, index) {
                    return Container(
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                  top: 10,
                                  left: 15,
                                ),
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.green,
                                ),
                                child: Icon(
                                  Icons.done,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
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
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text('\$1248.00',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: AppColor.mainColor,
                                      fontWeight: FontWeight.w700)),
                            ],
                          ),
                          Divider(
                            thickness: 2,
                            color: Colors.grey.withOpacity(0.5),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            Column(
              children: [
                Text(
                  'Total Amount',
                  style: TextStyle(color: AppColor.idColor, fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '\$2840.00',
                  style: TextStyle(
                      color: AppColor.mainColor,
                      fontSize: 30,
                      fontWeight: FontWeight.w600),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
