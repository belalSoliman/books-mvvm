import 'package:bookly/features/home/presentaion/views/widgets/custom_btn.dart';
import 'package:flutter/material.dart';
import 'package:bookly/consts.dart';

class BuyButton extends StatelessWidget {
  const BuyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomBtn(
              buttonTetxt: 'Buy Now',
              textColor: Colors.black,
              buttonColor: Colors.white,
            ),
          ),
          Expanded(
            child: CustomBtn(
              buttonTetxt: '19\$',
              textColor: Colors.white,
              buttonColor: btnColor,
            ),
          ),
        ],
      ),
    );
  }
}
