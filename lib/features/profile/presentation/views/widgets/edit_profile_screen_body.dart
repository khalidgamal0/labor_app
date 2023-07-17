import 'package:flutter/material.dart';
import 'package:labor/core/utils/assets_data.dart';
import 'package:labor/core/utils/text_style.dart';
import 'package:labor/core/widgets/customAppbar.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/end_page.dart';
import '../../../../../core/widgets/profile_apprach_fields.dart';

class EditProfileScreenBody extends StatelessWidget {
  const EditProfileScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(context: context, title: 'Edit Profile'),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 40, left: 20, right: 18, bottom: 20),
        child: SingleChildScrollView(
          child: Column(
              children: [
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  const Image(
                    image: AssetImage(
                      AssetsData.profileImage,
                    ),
                  ),
                  Container(
                      width: 86,
                      height: 86,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black.withOpacity(.3),
                      ),
                      child: const Icon(
                        Icons.camera_alt_outlined,
                        size: 28,
                        color: Colors.white,
                      )),
                ],
              ),
            ),
            const SizedBox(height: 30,),
                  ProfileApproachFields(
                  text:'Full Name',hintText: 'Edit Name',suffix: Icons.person,
                ),
                  ProfileApproachFields(
                  text:'Phone',hintText: 'Edit Phone',suffix: Icons.phone,
                ),
                  ProfileApproachFields(
                  text:'Password',hintText: 'Edit Password',suffix: Icons.visibility_outlined,
                ),
                const SizedBox(height: 50,),
                CustomButton(buttonName: 'Save Changes',radius: 8,onTap: (){}),
                const SizedBox(height: 50,),
                Container(
                  width: 160,
                  height: 58,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xffFF0000).withOpacity(.1)
                  ),
                  child:  Padding(
                    padding:  const EdgeInsets.only(top:17,bottom: 17,left: 8),
                    child: Row(children: [
                      const Icon(Icons.delete_outlined,color: Color(0xfff04545),),
                      const SizedBox(width: 2,),
                      Text('Delete Account',style:Styles.textStyle16.copyWith(fontWeight:FontWeight.w500),),
                    ]),
                  ),
                ),
                const SizedBox(height: 50,),
                const Align(
                    alignment: Alignment.bottomCenter,
                    child:  EndPage()),
              ]),
        ),
      ),
    );
  }
}


