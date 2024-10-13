import 'package:bloc/bloc.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/use_case/fetceh_fetear_books_usecase.dart';

part 'fetch_featchure_books_state.dart';

class FetchFeatchureBooksCubit extends Cubit<FetchFeatchureBooksState> {
  FetchFeatchureBooksCubit(this.fetchFeatchureBooksUsecase)
      : super(FetchFeatchureBooksInitial());
  final FetcehFetearBooksUsecase fetchFeatchureBooksUsecase;
  Future<void> fetchFetureBooks() async {
    emit(FetchFeatchureBooksLoading());
    var result = await fetchFeatchureBooksUsecase.call();
    result.fold((failure) {
      emit(FetchFeatchureBooksError(message: failure.message));
    }, (books) {
      emit(FetchFeatchureBooksSuccess(books: books));
    });
  }
}
