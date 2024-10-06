import 'package:flutter/material.dart';

class BookOfWeekWidgetDetails extends StatelessWidget {
  const BookOfWeekWidgetDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xff171B36),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      semanticContainer: true,
      margin: const EdgeInsets.symmetric(horizontal: 12),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.width * 0.44,
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.height * 0.22,
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
                  Text(
                    'The Psychology of Money',
                    overflow: TextOverflow.fade,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.034,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.011,
                  ),
                  Text(
                    'The psychology of money is the study of our behavior with money. Success with money isn\'t about knowledge, IQ, or how good you are at math. It\'s about behavior, and everyone is prone to certain behaviors over others.',
                    maxLines: 4,
                    overflow: TextOverflow.fade,
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.03,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  const Row(children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Text(
                      ' 4.8',
                      style: TextStyle(color: Colors.white),
                    )
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
