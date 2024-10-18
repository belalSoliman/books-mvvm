import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

Future<void> saveBooksData(List<BookEntity> books, String booksNmae) async {
  var box = await Hive.openBox<BookEntity>(booksNmae);
  box.addAll(books);
}
