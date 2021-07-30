class SizeModel {
  bool isSelected;
  final String buttonText;

  SizeModel(
    this.isSelected,
    this.buttonText,
  );
}

List sizeRadioData = [
  SizeModel(false, 'S'),
  SizeModel(false, 'M'),
  SizeModel(false, 'L'),
];
