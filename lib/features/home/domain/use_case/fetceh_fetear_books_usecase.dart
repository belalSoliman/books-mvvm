import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetcehFetearBooksUsecase extends UseCase<List<BookEntity>> {
  final HomeRepo homeRepo;

  FetcehFetearBooksUsecase({required this.homeRepo});

  @override
  Future<Either<Failure, List<BookEntity>>> call() async {
    return await homeRepo.fetchFeaturedBooks();
  }
}

abstract class UseCase<T> {
  Future<Either<Failure, T>> call();
}
