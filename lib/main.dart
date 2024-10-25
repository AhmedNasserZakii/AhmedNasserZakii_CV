import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_cv/core/utils/colors.dart';

import 'features/home/presentation/view/home_mobile_view.dart';
import 'features/home/presentation/view/home_web_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ScreenUtil.ensureScreenSize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Ahmed Nasser Zakii',
              theme: ThemeData(
                scaffoldBackgroundColor: kPrimaryColor,
                textTheme: GoogleFonts.poppinsTextTheme(),
                useMaterial3: true,
              ),
              home: LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth > 600) {
                    return const HomeWebView();
                  } else {
                    return const HomeMobileView();
                  }
                },
              ));
        });
  }
}
