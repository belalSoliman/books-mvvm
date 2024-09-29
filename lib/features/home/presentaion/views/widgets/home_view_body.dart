import 'package:bookly/features/home/presentaion/views/widgets/book_of_week_widget.dart';
import 'package:bookly/features/home/presentaion/views/widgets/custom_appbar.dart';
import 'package:bookly/features/home/presentaion/views/widgets/list_view_display.dart';

import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        const CustomAppbar(),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        const BookOfWeekWidget(),
        const ListViewDisplay(),
      ],
    );
  }
}
