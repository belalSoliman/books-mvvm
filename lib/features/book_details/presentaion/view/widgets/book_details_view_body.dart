import 'package:bookly/features/book_details/presentaion/view/widgets/auhtor_card.dart';
import 'package:bookly/features/book_details/presentaion/view/widgets/book_details.dart';
import 'package:bookly/features/book_details/presentaion/view/widgets/custom_app_bar_detials.dart';
import 'package:bookly/features/book_details/presentaion/view/widgets/main_book_details.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SafeArea(child: CustomAppBarDetials()),
        BookOfWeekWidgetDetails(),
        AuhtorCard(),
        MainBookDetails(),
      ],
    );
  }
}
