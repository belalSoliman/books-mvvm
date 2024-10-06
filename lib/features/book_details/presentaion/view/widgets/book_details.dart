import 'package:flutter/material.dart';

class MainBookDetails extends StatelessWidget {
  const MainBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Text(
          "About The Book",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          r"'The Psychology of Money' is an essential read for anyone interested in being better with money. Fast-paced and engaging, this book will help you refine your thoughts towards money. You can finish this book in a week, unlike other books that are too lengthy.The most important emotions in relation to money are fear, guilt, shame and envy. It's worth spending some effort to become aware of the emotions that are especially tied to money for you because, without awareness, they will tend to override rational thinking and drive your actions.",
          overflow: TextOverflow.fade,
          maxLines: 10,
          style: TextStyle(color: Colors.grey, fontSize: 14),
        )
      ]),
    );
  }
}
