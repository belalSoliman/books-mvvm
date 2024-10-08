import 'package:bookly/features/home/presentaion/views/widgets/popular_book_item.dart';
import 'package:flutter/material.dart';

class ListViewPopualrBOoks extends StatelessWidget {
  const ListViewPopualrBOoks({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 100,
      itemBuilder: (BuildContext context, int index) {
        return const PopularBookItem();
      },
    );
  }
}
