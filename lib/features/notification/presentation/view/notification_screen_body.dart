import 'package:flutter/material.dart';
import 'package:labor/constant.dart';
import 'package:labor/core/widgets/customAppbar.dart';
import 'package:labor/features/notification/presentation/view/widgets/notification_fields.dart';


class NotificationScreenBody extends StatelessWidget {
  const NotificationScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: customAppbar(context: context, title: 'Notification'),
      body:const Padding(
        padding:  EdgeInsets.symmetric(horizontal:20),
        child: SingleChildScrollView(
          child: Column(children: [
             SizedBox(height: 32,),
            NotificationFields(icon: Icons.check_circle,iconColor: kPrimaryColor,title: 'Order Confirmed',
              text: 'Your order is Done\n register payment methods',
              date: '1 hr',
            ),
            NotificationFields(icon: Icons.message,iconColor: Color(0xffF7931E),title: 'Reminder',
              text: 'House Shifting - #2F33J \nscheduled Tomorrow.',
              date: '2 hr',
            ),
            NotificationFields(icon: Icons.close,iconColor: kPrimaryColor,title: 'Order Canceled',
              text: 'Your order is Canceled \n Try again',
              date: 'Yesterday',
            ),
          ]),
        ),
      ),
    );
  }
}

