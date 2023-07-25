import 'package:flutter/material.dart';

import '../../../../../core/utils/text_style.dart';
import '../../../../../core/widgets/end_page.dart';
import '../../../../../core/widgets/profile_apprach_fields.dart';
import 'comments_item.dart';

class Section2Comment extends StatelessWidget {
  const Section2Comment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Comments',style: Styles.textStyle16,),
        const SizedBox(height: 27,),
        ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) =>const  CommentsItem(),
            separatorBuilder: (context, index) =>const SizedBox(height: 25,),
            itemCount: 2),
        const SizedBox(height: 27,),
        ProfileApproachFields(text: 'Add Comment',hintText: 'Add Your Comment',),
        const SizedBox(height: 15,),
        const Center(child:  EndPage()),
        const SizedBox(height: 27,),
      ],
    );
  }
}
