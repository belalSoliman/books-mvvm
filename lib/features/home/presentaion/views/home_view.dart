import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/home/presentaion/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 0,
              right: 0,
              child: SvgPicture.asset(
                AssetsData.bookBG,
              )),
          const HomeViewBody()
        ],
      ),
    );
  }
}
