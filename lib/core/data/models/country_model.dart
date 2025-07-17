class CountryModel {
  final String name;
  final String flag;
  final String languageCode;
  final String phoneCode;
  final int phoneNumberLength;
  final String currencyCode; 

  CountryModel({
    required this.name,
    required this.flag,
    required this.languageCode,
    required this.phoneCode,
    required this.phoneNumberLength,
    required this.currencyCode,
  });

  static List<CountryModel> countriesList = [
    CountryModel(
      name: "Egypt",
      flag: "🇪🇬",
      languageCode: "ar",
      phoneCode: "+20",
      phoneNumberLength: 11,
      currencyCode: "EGP",
    ),
    CountryModel(
      name: "Saudi Arabia",
      flag: "🇸🇦",
      languageCode: "ar",
      phoneCode: "+966",
      phoneNumberLength: 9,
      currencyCode: "SAR",
    ),
    CountryModel(
      name: "United States",
      flag: "🇺🇸",
      languageCode: "en",
      phoneCode: "+1",
      phoneNumberLength: 10,
      currencyCode: "USD",
    ),
  ];
}
