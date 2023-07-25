import 'package:flutter/material.dart';
import 'package:labor/core/utils/text_style.dart';
import 'package:labor/core/widgets/customAppbar.dart';
import 'package:labor/features/profile/presentation/views/widgets/wallet_fields.dart';

class WalletScreenBody extends StatelessWidget {
  const WalletScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: customAppbar(context: context, title: 'Wallet'),
      body:  Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          Container(height: 64,width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xff4B8673),
            ),
            child:  Row(children: [
              const  SizedBox(width: 25,),
              const Icon(Icons.folder_copy_outlined,color: Colors.white,),
              const  SizedBox(width: 15,),
              Column(children: [
                const  SizedBox(height: 8,),
                const Text('My Balance',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Color(0xffDFDFDF)),),
                Text('100 SR',style: Styles.textStyle18.copyWith(color: Colors.white),)
              ],)
            ]),
          ),
          const SizedBox(height: 20,),
          const WalletFields(buttonName: 'Add to wallet',text: '100 SR have been added to your balance'),
          const SizedBox(height: 20,),
          const WalletFields(buttonName: 'wallet discount',text: '100 SR have been wallet discount',buttonColor: Color(0xffDF4C4C)),

        ]),
      ),
    );
  }
}

