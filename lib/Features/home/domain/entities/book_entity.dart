class BookEntity {
  final String bookId;
  final String? image;
  final String title;
  final String? authername;
  final num? price;
  final num? raiting;

  BookEntity(this.bookId,
      {required this.image,
      required this.title,
      required this.authername,
      required this.price,
      required this.raiting});
}
