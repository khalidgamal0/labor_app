import 'package:flutter/material.dart';
import 'package:labor/core/utils/text_style.dart';
import 'package:labor/core/widgets/customAppbar.dart';
import 'details_sec_1.dart';
import 'details_sec_2.dart';
import 'details_sec_3.dart';

class OrderDetailsScreenBody extends StatelessWidget {
  const OrderDetailsScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(context: context, title: 'Order Details'),
      body: const Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            DetailsSection1(),
            SizedBox(
              height: 20,
            ),
            DetailsSection2(),
            SizedBox(
              height: 24,
            ),
            Text(
              'Price',
              style: Styles.textStyle18,
            ),
            SizedBox(
              height: 30,
            ),
            DetailsSection3(),
            SizedBox(
              height: 50,
            ),
          ]),
        ),
      ),
    );
  }
}
