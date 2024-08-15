import '../../../core/api/country_code_api.dart';
import '../model/country_code_model.dart';

class CountryCodeRepository {
  final CountryCodeApi api;
  CountryCodeRepository({required this.api});

  Future<List<CountryCodeModel>> getCountryCodes() async {
    final list = await api.getCountryCode();
    return list.map((e) => CountryCodeModel.fromJson(e)).toList();
  }
}