import 'package:flutter/material.dart';
import 'package:labor/constant.dart';
import 'package:labor/core/widgets/customAppbar.dart';
import 'package:labor/core/widgets/navigation.dart';
import 'package:labor/features/notification/presentation/view/widgets/notification_fields.dart';

import '../order_details.dart';


class NotificationScreenBody extends StatelessWidget {
  const NotificationScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: customAppbar(context: context, title: 'Notification'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20),
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(height: 32,),
            const NotificationFields(icon: Icons.check_circle,iconColor: kPrimaryColor,title: 'Order Confirmed',isLast: true,
              text: 'Your order is Done\n register payment methods',
              date: '1 hr',
            ),
            InkWell(
              onTap: (){
                navigateTo(context, const OrderDetailsScreen());
              },
              child:const NotificationFields(icon: Icons.schedule_send_outlined,iconColor: Color(0xffF7931E),title: 'Reminder',
                text: 'House Shifting - #2F33J \nscheduled Tomorrow.',
                date: '2 hr',
              ),
            ),
            InkWell(
              onTap: (){
                navigateTo(context, const OrderDetailsScreen());
              },
              child: const NotificationFields(icon: Icons.cancel,iconColor: Colors.red,title: 'Order Canceled',
                text: 'Your order is Canceled \n Try again',
                date: 'Yesterday',
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

