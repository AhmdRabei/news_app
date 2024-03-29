class ArticleModel {
  final String title;
  final String? subTitle;
  final String? articleImage;
  final String? url;
  const ArticleModel({
    required this.articleImage,
    required this.title,
    required this.subTitle,
    required this.url,
  });
}
