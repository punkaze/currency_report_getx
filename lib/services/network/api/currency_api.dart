import 'package:clean_structure_project/services/network/api_client.dart';
import 'package:clean_structure_project/services/network/api_constant/api_endpoint.dart';
import 'package:dio/dio.dart';

class CurrencyApi {
  CurrencyApi({
    required this.apiClient,
  });

  final ApiClient apiClient;

  Future<Response<dynamic>> getCurrencyApi() async {
    try {
      final response = apiClient.get<dynamic>(ApiEndpoint.currentPrice);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
