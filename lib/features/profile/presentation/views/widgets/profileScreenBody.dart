import 'package:flutter/material.dart';
import 'package:labor/constant.dart';
import 'package:labor/core/utils/assets_data.dart';
import 'package:labor/core/utils/text_style.dart';
import 'package:labor/core/widgets/customAppbar.dart';
import 'package:labor/features/profile/presentation/views/widgets/profileFields.dart';
import '../../../../../core/widgets/navigation.dart';
import '../../../../../core/widgets/secon-custom_button.dart';
import '../../../../adress/presentation/view/address_screen.dart';
import '../../../../notification/presentation/view/notification_screen.dart';
import '../../../../payment/presentation/views/payment_screen.dart';
import '../contact_us.dart';
import '../edit_profile.dart';
import '../wallet.dart';

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(context: context, title: 'Profile'),
      body: Padding(
        padding: const EdgeInsets.only(top: 5, right: 20, left: 20, bottom: 20),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Center(
              child: Column(
                children: [
                  const Image(image: AssetImage(AssetsData.profileImage)),
                  Padding(
                    padding: const EdgeInsets.only(top: 11, bottom: 15),
                    child: Text(
                      'Abdul Aziz Al-Qahtany',
                      style: Styles.textStyle16
                          .copyWith(fontWeight: FontWeight.w700),
                    ),
                  ),
                  secondCustomButton(
                      text: 'Edit',
                      function: () {
                        navigateTo(context, const EditProfileScreen());
                      }),
                ],
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            ProfileFields(
                icon1: Icons.credit_card,
                title: 'Payment Methods',
                text: 'Add your credit & debit cards',
                onTap: () {
                  navigateTo(context, const PaymentScreen());
                }),
            const SizedBox(
              height: 28,
            ),
            ProfileFields(
                icon1: Icons.location_on_rounded,
                title: 'Location',
                text: 'Add your Home Location ',
                onTap: () {
                  navigateTo(context,const AddressScreen());
                }),
            const SizedBox(
              height: 28,
            ),
            ProfileFields(
                icon1: Icons.notifications,
                title: 'Push Notification',
                text: 'For daily update and others',
                icon2: Transform.scale(
                  scale: 1.2,
                  child: Switch(
                      activeColor: kPrimaryColor,
                      value: true,
                      onChanged: (value) {}),
                ),
                onTap: () {
                  navigateTo(context,const NotificationScreen());
                }),
            const SizedBox(
              height: 28,
            ),
                ProfileFields(
                    icon1: Icons.phone_in_talk,
                    title: 'Wallet',
                    text: 'Details of clouds and discount',
                    onTap: () {
                      navigateTo(context, const WalletScreen());
                    }),
                const SizedBox(
                  height: 28,
                ),
                ProfileFields(
                    icon1: Icons.phone_in_talk,
                    title: 'Contact Us',
                    text: 'For more information',
                    onTap: () {
                      navigateTo(context, const ContactUsScreen());
                    }),
            const SizedBox(
              height: 28,
            ),
            ProfileFields(
                icon1: Icons.logout, title: 'LogOut', text: '', onTap: () {}),
            const SizedBox(
              height: 28,
            ),
          ]),
        ),
      ),
    );
  }
}
