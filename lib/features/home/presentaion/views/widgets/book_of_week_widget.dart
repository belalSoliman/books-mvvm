import 'package:bookly/consts.dart';
import 'package:bookly/features/home/presentaion/views/widgets/custom_btn.dart';
import 'package:flutter/material.dart';

class BookOfWeekWidget extends StatelessWidget {
  const BookOfWeekWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      semanticContainer: true,
      shadowColor: Colors.black,
      color: const Color(0XFFFFFFFF),
      margin: const EdgeInsets.symmetric(horizontal: 12),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.width * 0.45,
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.height * 0.2,
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
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text(
                    'The Psychology of Money',
                    overflow: TextOverflow.fade,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.04,
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
                      fontSize: MediaQuery.of(context).size.width * 0.03,
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
                      width: 8,
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
      ),
    );
  }
}
