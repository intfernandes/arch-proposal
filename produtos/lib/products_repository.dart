import 'package:core/services/products/products_service.dart';
import 'package:produtos/product.dart';

export 'product.dart';

class ProductsRepository {
  final ProductsService _productService;

  ProductsRepository({required ProductsService productService})
      : _productService = productService;

  Future<List<Product>> fetchProducts() async {
    final products = await _productService.fetchProducts();
    return products.map((product) => Product.fromMap(product)).toList();
  }

  Future<Product> fetchProductById(String id) async {
    final product = await _productService.fetchProductById(id);
    return Product.fromMap(product);
  }
}
