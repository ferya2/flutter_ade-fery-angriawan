class BookModel {
  int bookId;
  int year;
  String title;

  BookModel({
    required this.bookId,
    required this.year,
    required this.title,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      bookId: json["book_id"],
      year: json["year"],
      title: json["title"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "book_id": bookId,
      "year": year,
      "title": title,
    };
  }
}