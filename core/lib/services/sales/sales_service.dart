import 'package:core/services/adapters/http/i_http_client.dart';

class DealsService {
  final IHttpClient _httpClient;

  DealsService({required IHttpClient httpClient}) : _httpClient = httpClient;

  Future<List<dynamic>> fetchDeals() async {
    List<Map> deaels = [];
    try {
      final response = await _httpClient.get('/products');

      if (response is List) {
        for (var element in response) {
          deaels.add(element);
        }
      }

      await Future.delayed(Duration(seconds: 3));

      return deaels;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> fetchDealById(String id) async {
    try {
      final deals = await fetchDeals();
      return deals.firstWhere((raw) => raw['id'] == id);
    } catch (e) {
      rethrow;
    }
  }

  Future<Map> createDeal(Map<String, dynamic> deal) async {
    try {
      await _httpClient.post('/products', deal);
      return deal;
    } catch (e) {
      rethrow;
    }
  }
}
