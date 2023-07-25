import 'package:flutter/material.dart';
import 'package:labor/features/product_layout/presentation/views/widgets/rate_comment.dart';
import 'package:labor/features/product_layout/presentation/views/widgets/section_1_comments.dart';
import 'package:labor/features/product_layout/presentation/views/widgets/section_2_comment.dart';
import '../../../../../core/widgets/customAppbar.dart';

class ProfileCompanyScreenBody extends StatelessWidget {
  const ProfileCompanyScreenBody({Key? key, this.isRate = false})
      : super(key: key);
  final bool isRate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(context: context, title: 'Company'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 23,
            ),
            const SectionComments1(),
            const SizedBox(
              height: 43,
            ),
            if (isRate) const RateComment(),
            const Section2Comment(),
          ]),
        ),
      ),
    );
  }
}
