part of 'fetch_featchure_books_cubit.dart';

abstract class FetchFeatchureBooksState {}

class FetchFeatchureBooksInitial extends FetchFeatchureBooksState {}

class FetchFeatchureBooksLoading extends FetchFeatchureBooksState {}

class FetchFeatchureBooksSuccess extends FetchFeatchureBooksState {
  final List<BookEntity> books;
  FetchFeatchureBooksSuccess({required this.books});
}

class FetchFeatchureBooksError extends FetchFeatchureBooksState {
  final String message;
  FetchFeatchureBooksError({required this.message});
}
