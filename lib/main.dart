import 'package:bookly/features/splash/presentaion/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: depend_on_referenced_packages
import 'package:device_preview/device_preview.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const Books(),
    ),
  );
}

class Books extends StatelessWidget {
  const Books({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        // scaffoldBackgroundColor: const Color(0xff100b20),
        textTheme: GoogleFonts.hankenGroteskTextTheme(),
      ),
      home: const SplashView(),
    );
  }
}
