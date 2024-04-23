class ArticleModel {
  final String? img;
  final String? title;
  final String? description;
  ArticleModel({
    required this.title,
    required this.img,
    required this.description,
  });
  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      title: json["title"],
      img: json["urlToImage"],
      description: json["description"],
    );
  }
}
