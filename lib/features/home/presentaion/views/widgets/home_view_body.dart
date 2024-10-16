import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentaion/views/widgets/book_of_week_widget.dart';
import 'package:bookly/features/home/presentaion/views/widgets/custom_appbar.dart';
import 'package:bookly/features/home/presentaion/views/widgets/list_view_bloc_builder.dart';
import 'package:bookly/features/home/presentaion/views/widgets/list_view_popular_books.dart';

import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              const CustomAppbar(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              const BookOfWeekWidget(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              const Text(
                "Recommanded for you",
                style: Styles.titleMedduim,
              ),
              const ListviewDisplayBlocBuilder(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              const Text(
                "Popular Books",
                style: Styles.titleMedduim,
              ),

              const ListViewPopualrBOoks(),

              // Flexible(child: ListViewPopualrBOoks()),
            ],
          ),
        )),
      ],
    );
  }
}
