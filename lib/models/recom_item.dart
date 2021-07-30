class RecommendedItem {
  final String name, svgSrc;
  final int amount;
  final double rating;

  RecommendedItem(this.name, this.svgSrc, this.amount, this.rating);
}

List recom = [
  RecommendedItem('Hobo Bag', 'assets/hobobag.png', 888, 4.5),
  RecommendedItem('Queen Bag', 'assets/queenbag.png', 898, 4.5),
  RecommendedItem('Queen Bag', 'assets/queenbag.png', 898, 4.5),
];
