import 'package:core/services/adapters/http/i_http_client.dart';

class ProductsService {
  final IHttpClient _httpClient;

  ProductsService({required IHttpClient httpClient}) : _httpClient = httpClient;

  Future<List<dynamic>> fetchProducts() async {
    List<Map> products = [];
    try {
      final response = await _httpClient.get('/products');

      if (response is List) {
        for (var element in response) {
          products.add(element);
        }
      }

      await Future.delayed(Duration(seconds: 3));

      return products;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> fetchProductById(String id) async {
    try {
      final products = await fetchProducts();
      return products.firstWhere((raw) => raw['id'] == id);
    } catch (e) {
      rethrow;
    }
  }
}
