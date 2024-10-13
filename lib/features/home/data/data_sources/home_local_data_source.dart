import 'package:bookly/consts.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeaturedBooks();

  List<BookEntity> fetchNewsetBooks();
}

class HomeLocalDataSourceImplemntaion extends HomeLocalDataSource {
  @override
  List<BookEntity> fetchFeaturedBooks() {
    var box = Hive.box<BookEntity>(KfeaturesBooks);
    return box.values.toList();
  }

  @override
  List<BookEntity> fetchNewsetBooks() {
    // TODO: implement fetchNewsetBooks
    throw UnimplementedError();
  }
}
