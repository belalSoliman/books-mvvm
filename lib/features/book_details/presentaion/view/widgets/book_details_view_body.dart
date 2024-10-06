import 'package:bookly/features/book_details/presentaion/view/widgets/custom_app_bar_detials.dart';
import 'package:bookly/features/book_details/presentaion/view/widgets/main_book_details.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
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
        const SafeArea(child: CustomAppBarDetials()),
        Positioned(
            left: 16,
            right: 16,
            top: MediaQuery.of(context).size.height * .1,
            child:const  Column(children: [
              BookOfWeekWidgetDetails(),
            ]))
      ],
    );
  }
}
