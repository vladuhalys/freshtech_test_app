import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_code_model.freezed.dart';
part 'country_code_model.g.dart';

@freezed
class CountryCodeModel with _$CountryCodeModel {
  const factory CountryCodeModel({
    required String? name,
    required String? dial_code,
    required String? code,
  }) = _CountryCodeModel;

  factory CountryCodeModel.fromJson(Map<String, dynamic> json) => _$CountryCodeModelFromJson(json);
}

extension CountryCodeModelFormater on CountryCodeModel {
  String getCountryCodeInfo() {
    if(dial_code!.contains('+')){
      return '$code $dial_code';
    }
    else{
      return '$code +$dial_code';
    }
  }
}