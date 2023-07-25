import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:labor/features/login/data/model/user_model.dart';
import 'package:meta/meta.dart';
import '../../../../core/widgets/navigation.dart';
import '../../../reset_password/features/views/otp.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  static AuthCubit get(context){
    return   BlocProvider.of(context);
  }

  static String verificationId='';
  FirebaseAuth auth = FirebaseAuth.instance;

  void userRegister(
      context,
      {
    required final String name,
    required final String phone,
    required final String password,
  })async{
    emit(RegisterLoading());
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phone,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential);
      },
      verificationFailed: (FirebaseAuthException e) {
        if (e.code == 'invalid-phone-number') {
          print('The provided phone number is not valid.');
        }
      },
      codeSent: (String verificationId, int? resendToken) async {
        AuthCubit.verificationId=verificationId;
        navigateTo(context,const Otp());
      },
      timeout: const Duration(seconds: 60),
      codeAutoRetrievalTimeout: (String verificationId) {
        // Auto-resolution timed out...
      },                    ).                   // FirebaseAuth.instance.createUserWithEmailAndPassword(
    then((value){
      userCreate(name: name,phone: phone,password: password,uid:verificationId,);
    }).catchError((onError){
      emit(RegisterError());
    });
  }


  void userCreate({
    required final String name,
    required final String phone,
    required final String password,
    required final String uid,
  })async{
    UserModel userModel=UserModel(name: name, phone: phone, password: password, uid: uid);
    await FirebaseFirestore.instance.collection('Users').
    doc(uid).set(userModel.toMap()).then((value){
      emit(RegisterSuccess());
    }).catchError((error){
      emit(RegisterError());
    });

  }

}
