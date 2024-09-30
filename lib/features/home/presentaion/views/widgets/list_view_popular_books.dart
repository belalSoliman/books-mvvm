import 'package:bookly/features/home/presentaion/views/widgets/popular_book_item.dart';
import 'package:flutter/material.dart';

class ListViewPopualrBOoks extends StatelessWidget {
  const ListViewPopualrBOoks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return PopularBookItem();
        },
      ),
    );
  }
}
