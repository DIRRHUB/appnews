abstract class DimensionConstants {
  static const double appBarHeight = 50;

  //icons
  static const double iconExtraSmall = 12;
  static const double iconSmall = 14;
  static const double iconNormal = 16;
  static const double iconMedium = 18;
  static const double iconLarge = 24;
  static const double iconExtraLarge = 48;
  static const double iconImmense = 60;
  static const double iconExtraImmense = 80;
}

abstract class PaddingConstants {
  static const double extraSmall = 4;
  static const double small = 6;
  static const double normal = 8;
  static const double medium = 12;
  static const double large = 16;
  static const double extraLarge = 24;
  static const double immense = 32;
  static const double extraImmense = 40;
  static const double extraImmensePlus = 60;
  static const double extraImmenseSmall = extraImmense + normal; //48
  static double get extraImmenseMedium => extraImmense + medium; //52
  static double get largeExtraSmall => large + extraSmall; //20
  static double get largeSmall => small + extraSmall; //10
  static double get largeWithSmall => large + small; //22
}

abstract class BorderRadiusConstants {
  static const double superSmall = 2;
  static const double extraSmall = 4;
  static const double small = 6;
  static const double normal = 8;
  static const double medium = 12;
  static const double large = 16;
  static const double extraLarge = 24;
  static const double superLarge = 36;
}
