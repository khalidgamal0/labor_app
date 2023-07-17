import 'package:flutter/material.dart';

import '../../../../../core/utils/text_style.dart';

class ProfileFields extends StatelessWidget {
  const ProfileFields({
    super.key,
    required this.icon1,
    this.icon2 = const Icon(Icons.arrow_forward_ios),
    required this.title,
    required this.text,
    required this.onTap,
  });

  final IconData icon1;
  final dynamic icon2;
  final String title;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 72,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
              child: Icon(icon1),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (text == '')
                    const SizedBox(
                      height: 10,
                    ),
                  Text(
                    title,
                    style: Styles.textStyle16
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  if (text != '') Text(text, style: Styles.textStyle14),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 24, bottom: 24, left: 18),
              child: icon2,
            )
          ],
        ),
      ),
    );
  }
}
