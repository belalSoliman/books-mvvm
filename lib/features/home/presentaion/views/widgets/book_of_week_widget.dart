import 'package:bookly/consts.dart';
import 'package:bookly/features/home/presentaion/views/widgets/custom_btn.dart';
import 'package:flutter/material.dart';

class BookOfWeekWidget extends StatelessWidget {
  const BookOfWeekWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0XFFFFFFFF),
      margin: const EdgeInsets.symmetric(horizontal: 24),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 150,
            height: 200,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Mask group.png"),
                    fit: BoxFit.cover)),
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                const Text(
                  'The Psychology of Money',
                  overflow: TextOverflow.fade,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: fontColor,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.012,
                ),
                Text(
                  'The psychology of money is the study of our behavior with money. Success with money isn\'t about knowledge, IQ, or how good you are at math. It\'s about behavior, and everyone is prone to certain behaviors over others.',
                  maxLines: 4,
                  overflow: TextOverflow.fade,
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey[700],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                const Row(children: [
                  CustomBtn(
                    buttonTetxt: "Grab Now",
                    textColor: Colors.white,
                    buttonColor: btnColor,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  CustomBtn(
                    buttonTetxt: "Learn More",
                    textColor: Colors.black,
                    buttonColor: Colors.white,
                  ),
                ]),
              ],
            ),
          )
        ],
      ),
    );
  }
}
