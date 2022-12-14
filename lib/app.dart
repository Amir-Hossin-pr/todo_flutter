import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_flutter/routes/router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: Routes.routes,
      initialRoute: Routes.initialRoute,
      theme: ThemeData(textTheme: GoogleFonts.montserratTextTheme()),
      defaultTransition: Transition.cupertinoDialog,
    );
  }

  static changeStatusbarColor(Color color, Brightness brightness) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: color, statusBarIconBrightness: brightness));
  }
}
