class RecentItem {
  final String imageUrl;
  final String title;
  final String category;
  final String type;
  final double rating;
  final int ratings;

  RecentItem(
      {this.imageUrl = "",
      this.title = "",
      this.category = "",
      this.type = "",
      this.rating = 0,
      this.ratings = 0});
}
