import 'package:bookly/features/home/presentaion/views/widgets/list_view_item.dart';
import 'package:flutter/material.dart';

class ListViewDisplay extends StatelessWidget {
  const ListViewDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.18 * 1.5,
      child: ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListViewItem(),
          );
        },
      ),
    );
  }
}
