import 'package:bookly/consts.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeaturedBooks({
    int count = 0,
  });

  List<BookEntity> fetchNewsetBooks();
}

class HomeLocalDataSourceImplemntaion extends HomeLocalDataSource {
  @override
  List<BookEntity> fetchFeaturedBooks({int count = 0}) {
    int startIndex = count * 10;
    int endIndex = (count + 1) * 10;

    var box = Hive.box<BookEntity>(kfeaturesBooks);
    int length = box.values.length;
    if (endIndex > length || endIndex == 0) {
      endIndex = length;
      return [];
    }
    return box.values.toList().sublist(startIndex, endIndex);
  }

  @override
  List<BookEntity> fetchNewsetBooks() {
    var box = Hive.box<BookEntity>(knewestBooks);
    return box.values.toList();
  }
}
