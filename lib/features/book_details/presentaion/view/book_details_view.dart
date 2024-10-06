import 'package:bookly/features/book_details/presentaion/view/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
              color: Color(0xff171B36),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .4,
        ),
        const BookDetailsViewBody()
      ]),
    );
  }
}
