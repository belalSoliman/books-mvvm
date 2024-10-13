import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/use_case/fetch_pop_books.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.fetchNewestBooksUsecase) : super(NewestBooksInitial());
  final FetchPopBooksUseCae fetchNewestBooksUsecase;
  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    final result = await fetchNewestBooksUsecase.call();
    result.fold((failure) {
      emit(NewestBooksFailure(message: failure.message));
    }, (success) {
      emit(NewestBooksSuccess(books: success));
    });
  }
}
