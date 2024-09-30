import 'package:bookly/features/home/presentaion/views/widgets/custom_btn.dart';
import 'package:flutter/material.dart';

import 'package:bookly/consts.dart';

class PopularBookItem extends StatelessWidget {
  const PopularBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: const Color(0XFFFFFFFF),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.2,
              height: MediaQuery.of(context).size.height * 0.13,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/delicious-sushi-rolls.jpg"),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.04),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "The Steal Like An Artist",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: fontColor,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "Austin Kleon",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 16),
                      const SizedBox(width: 4),
                      Text(
                        "5.0",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey.shade800,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          "| Based on 23k Reviews",
                          overflow: TextOverflow.fade,
                          maxLines: 2,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "\$45.87",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: fontColor,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 12),
                const CustomBtn(
                  buttonTetxt: "Grab Now",
                  textColor: Colors.white,
                  buttonColor: btnColor,
                ),
                const SizedBox(height: 12),
                CustomBtn(
                  buttonTetxt: "Learn More",
                  textColor: fontColor,
                  buttonColor: Colors.transparent,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
