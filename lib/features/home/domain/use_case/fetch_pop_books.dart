import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/repos/home_repo.dart';
import 'package:bookly/features/home/domain/use_case/fetceh_fetear_books_usecase.dart';
import 'package:dartz/dartz.dart';

class FetchPopBooksUseCae extends UseCase<List<BookEntity>> {
  final HomeRepo homeRepo;

  FetchPopBooksUseCae({required this.homeRepo});

  @override
  Future<Either<Failure, List<BookEntity>>> call() async {
    return await homeRepo.fetchNewestBooks();
  }
}
