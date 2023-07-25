import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labor/core/utils/app_router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'core/utils/theme.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
      return  MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: lightData,
          routerConfig: AppRouter.router,
        );
      },
    );
  }
}
