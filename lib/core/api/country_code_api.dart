import 'dart:convert';

import 'api_methods.dart';
import 'api_service.dart';

class CountryCodeApi {
  final ApiService _apiService;
  const CountryCodeApi({required ApiService apiService}) : _apiService = apiService;

  Future<List<dynamic>> getCountryCode() async {
    final response = await _apiService.request(
      method: ApiMethods.get,
      url: "/CountryCodes.json",
    );
    final body = json.decode(response);
    return body;
  }
}