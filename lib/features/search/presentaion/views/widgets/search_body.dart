import 'package:bookly/features/home/presentaion/views/widgets/list_view_books.dart';
import 'package:bookly/features/home/presentaion/views/widgets/list_view_popular_books.dart';
import 'package:bookly/features/search/presentaion/views/widgets/search_icon.dart';
import 'package:flutter/material.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SearchScreenIcon(),
        Expanded(child: ListViewPopualrBOoks()),
      ],
    );
  }
}
