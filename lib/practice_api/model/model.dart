import 'package:education_app/practice_api/model/currency_model.dart';

class ApiModel {
  String? ip;
  final int inVersion;
  final double latitude;
  final double longitude;
  final String countryName;
  final String countryCode;
  final String timeZone;
  final String zipCode;
  final String cityName;
  final String regionName;
  final bool isProxy;
  final String continent;
  final String continentCode;
  final String language;
  final CurrencyModel currencyModel;
  ApiModel(
   {
    required this.inVersion,
    required this.latitude,
    required this.longitude,
    required this.countryName,
    required this.countryCode,
    required this.timeZone,
    required this.zipCode,
    required this.cityName,
    required this.regionName,
    required this.isProxy,
    required this.continent,
    required this.continentCode,
    required this.language,
       required this.currencyModel
  });

  factory ApiModel.fromJson(Map<String, dynamic> jsonData) {
    return ApiModel(
      inVersion: jsonData['ipVersion'],
      latitude: jsonData['latitude'],
      longitude: jsonData['longitude'],
      countryName: jsonData['countryName'],
      countryCode: jsonData['countryCode'],
      timeZone: jsonData['timeZone'],
      zipCode: jsonData['zipCode'],
      cityName: jsonData['cityName'],
      regionName: jsonData['regionName'],
      isProxy: jsonData['isProxy'],
      continent: jsonData['continent'],
      continentCode: jsonData['continentCode'],
      language: jsonData['language'],
      currencyModel: CurrencyModel.fromJson(jsonData['currency']),
    );
  }
}

// {
// "ipVersion": 4,
// "ipAddress": "103.72.61.177",
// "latitude": 25.861759,
// "longitude": 88.456284,
// "countryName": "Bangladesh",
// "countryCode": "BD",
// "timeZone": "+06:00",
// "zipCode": "5430",
// "cityName": "Baria",
// "regionName": "Rangpur",
// "isProxy": false,
// "continent": "Asia",
// "continentCode": "AS",
// "currency": {
// "code": "BDT",
// "name": "Taka"
// },
// "language": "Bengali",
// "timeZones": [
// "Asia/Dhaka"
// ],
// "tlds": [
// ".bd"
// ]
// }
