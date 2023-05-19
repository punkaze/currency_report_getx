import 'dart:convert';

import 'package:clean_structure_project/services/network/api_client.dart';
import 'package:clean_structure_project/services/network/api_constant/api_endpoint.dart';

class CurrencyApi {
  CurrencyApi({
    required this.apiClient,
  });

  final ApiClient apiClient;

  Future<Map<String, dynamic>> getCurrencyApi() async {
    try {
      final response = await apiClient.get<dynamic>(ApiEndpoint.currentPrice);
      final jsonResponse =
          jsonDecode(response.data.toString()) as Map<String, dynamic>;
      return jsonResponse;
    } catch (e) {
      rethrow;
    }
  }
}
