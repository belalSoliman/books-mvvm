import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';

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
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        textTheme: GoogleFonts.hankenGroteskTextTheme(),
      ),
    );
  }
}
