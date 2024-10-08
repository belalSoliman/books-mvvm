import 'dart:ffi';

class BookEntity {
  final String image;
  final String title;
  final String author;
  final Double price;
  final String description;
  final num rating;

  BookEntity(this.image, this.title, this.author, this.price, this.description,
      this.rating);
}
