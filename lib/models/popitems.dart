class PopItem {
  final String name, svgSrc;
  final int amount;
  final double rating;

  PopItem(this.name, this.svgSrc, this.amount, this.rating);
}

List popItems = [
  PopItem('Pink Bag', 'assets/pinkbag.png', 899, 4.5),
  PopItem('Leather Bag', 'assets/redbag.png', 789, 4.5),
  PopItem('Leather Bag', 'assets/redbag.png', 789, 4.5),
];
