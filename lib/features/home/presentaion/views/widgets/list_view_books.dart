import 'package:flutter/material.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/presentaion/views/widgets/book_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly/features/home/presentaion/manger/cubit_featchure_books/fetch_featchure_books_cubit.dart';

class ListViewDisplay extends StatefulWidget {
  const ListViewDisplay({super.key, required this.books});
  final List<BookEntity> books;

  @override
  State<ListViewDisplay> createState() => _ListViewDisplayState();
}

class _ListViewDisplayState extends State<ListViewDisplay> {
  late ScrollController _scrollController;
  var nextPage = 1;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.atEdge) return; // Ignore edges

    final double maxScroll = _scrollController.position.maxScrollExtent;
    final double currentScroll = _scrollController.position.pixels;

    if (currentScroll >= maxScroll / 2) {
      // Trigger fetch when scrolled past 50%
      context.read<FetchFeatchureBooksCubit>().fetchFetureBooks(
            count: nextPage++,
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.18 * 1.2,
      child: ListView.builder(
        controller: _scrollController,
        padding: EdgeInsets.zero,
        itemCount: widget.books.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: ListViewItem(
              imageUrl: widget.books[index].image ?? "",
            ),
          );
        },
      ),
    );
  }
}
