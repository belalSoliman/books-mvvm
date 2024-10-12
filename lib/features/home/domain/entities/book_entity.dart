class BookEntity {
  final String bookid;
  final String? image;
  final String title;
  final String? author;
  final num? price;
  final String description;
  final num? rating;

  BookEntity(
      {required this.image,
      required this.title,
      required this.author,
      required this.price,
      required this.description,
      required this.bookid,
      required this.rating});
}
