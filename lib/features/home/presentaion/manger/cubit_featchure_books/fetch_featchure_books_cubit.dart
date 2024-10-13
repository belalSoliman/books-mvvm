import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';

part 'fetch_featchure_books_state.dart';

class FetchFeatchureBooksCubit extends Cubit<FetchFeatchureBooksState> {
  FetchFeatchureBooksCubit() : super(FetchFeatchureBooksInitial());
}
