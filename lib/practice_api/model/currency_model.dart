class CurrencyModel{
  final String code;
  final String name;

  CurrencyModel({required this.code, required this.name});

  factory CurrencyModel.fromJson(Map<String,dynamic>jsonData){
    return CurrencyModel(code: jsonData['code'], name: jsonData['name']);
  }


}