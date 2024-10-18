import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly/features/home/presentaion/manger/cubit_featchure_books/fetch_featchure_books_cubit.dart';
import 'package:bookly/features/home/presentaion/views/widgets/list_view_books.dart';

class ListviewDisplayBlocBuilder extends StatelessWidget {
  const ListviewDisplayBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchFeatchureBooksCubit, FetchFeatchureBooksState>(
      builder: (context, state) {
        if (state is FetchFeatchureBooksSuccess) {
          return ListViewDisplay(books: state.books);
        } else if (state is FetchFeatchureBooksError) {
          return Center(
            child: Text(state.message),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
