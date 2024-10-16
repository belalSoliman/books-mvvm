import 'package:bookly/consts.dart';
import 'package:bookly/core/utils/api_sevice.dart';
import 'package:bookly/core/utils/functions/save_books.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks({int count = 0});
  Future<List<BookEntity>> fetchNewsetBooks();
}

class HomeRemoteDataSourceImplemntaion extends HomeRemoteDataSource {
  final ApiService apiService;
  HomeRemoteDataSourceImplemntaion({required this.apiService});
  @override
  Future<List<BookEntity>> fetchFeaturedBooks({
    int count = 0,
  }) async {
    var data = await apiService.get(
        endpoint:
            'volumes?filtering=free-ebooks&q=programming&startIndex=$count*10');
    List<BookEntity> books = getBookList(data);
    await saveBooksData(books, kfeaturesBooks);

    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewsetBooks() async {
    var data = await apiService.get(
        endpoint: 'volumes?filtering=free-ebooks&sorting=newest&q=programming');
    List<BookEntity> books = getBookList(data);
    await saveBooksData(books, knewestBooks);
    return books;
  }

  List<BookEntity> getBookList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var item in data['items']) {
      books.add(BookModel.fromJson(item));
    }
    return books;
  }
}
