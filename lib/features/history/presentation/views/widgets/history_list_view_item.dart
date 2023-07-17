import 'package:flutter/material.dart';
import 'package:labor/core/widgets/secon-custom_button.dart';

import '../../../../../constant.dart';
import '../../../../../core/utils/assets_data.dart';
import '../../../../../core/utils/text_style.dart';
import '../../../../../core/widgets/separated.dart';

class ListViewItemHistory extends StatelessWidget {
  const ListViewItemHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.only(left: 24, right: 16, ),
      child: Container(
        width: 388,
        height: 230,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xffDFDFDF).withOpacity(.25),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
              top: 15, left: 18, right: 17, bottom: 18),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'contract cleaning',
                      style: Styles.textStyle16
                          .copyWith(fontWeight: FontWeight.w700),
                    ),
                    const Text(
                      '25ds458126fs5dha',
                      style: Styles.textStyle12,
                    )
                  ],
                ),
                secondCustomButton(text: 'Accept', function: (){}),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Separated(color: Colors.grey.withOpacity(.25)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding:
                  EdgeInsets.only(top: 8.0, right: 13, bottom: 11),
                  child: Image(image: AssetImage(AssetsData.logoCompany)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 13.5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'United Group Company',
                        style: Styles.textStyle12.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Color(0xffFDCF2D),
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffFDCF2D),
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffFDCF2D),
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffFDCF2D),
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffFDCF2D),
                            size: 15,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 25.0),
                  child: Text(
                    '22/7/2022',
                    style: Styles.textStyle12,
                  ),
                ),
              ],
            ),
            Separated(color: Colors.grey.withOpacity(.25)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '1 Filipino worker under contract',
                  style: Styles.textStyle12,
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 2,
                    ),
                    const Text(
                      'Price',
                      style: Styles.textStyle12,
                    ),
                    Text(
                      '500',
                      style: Styles.textStyle16
                          .copyWith(fontWeight: FontWeight.w700),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Separated(color: Colors.grey.withOpacity(.25)),
            const SizedBox(
              height: 13,
            ),
            const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Complete payment methods',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: kPrimaryColor,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: kPrimaryColor,
                  )
                ]),
          ]),
        ),
      ),
    );
  }

}
