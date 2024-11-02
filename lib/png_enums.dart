enum PngEnum {
  damageMap('damage-map');

  final String value;

  const PngEnum(this.value);
  String get rawValue => "assets/png/$value.png";
}
