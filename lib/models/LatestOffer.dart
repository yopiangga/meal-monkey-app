class LatestOffer {
  final String imageUrl;
  final String title;
  final String type;
  final String category;
  final double rating;
  final int ratings;

  LatestOffer(
      {this.imageUrl = "",
      this.title = "",
      this.type = "",
      this.category = "",
      this.rating = 0,
      this.ratings = 0});
}
