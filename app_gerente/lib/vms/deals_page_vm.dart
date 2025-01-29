import 'package:flutter/foundation.dart' show ChangeNotifier;
import 'package:produtos/produtos.dart';
import 'package:vendas/deals_repository.dart';

class DealsPageVm extends ChangeNotifier {
  final DealsRepository _dealsRepository;
  final ProductsRepository _productsRepository;

  DealsPageVm(this._dealsRepository, this._productsRepository);

  bool fetchDealsLoader = false;
  bool fetchDealByIdLoader = false;
  bool createDealLoader = false;

  Future<List<Deal>> getDeals() async {
    fetchDealsLoader = true;
    notifyListeners();
    final result = _dealsRepository.fetchDeals();
    fetchDealsLoader = false;
    notifyListeners();
    return result;
  }

  Future<Deal> getDealById(String id) async {
    fetchDealByIdLoader = true;
    notifyListeners();
    final result = _dealsRepository.fetchDealById(id);
    fetchDealByIdLoader = false;
    notifyListeners();
    return result;
  }

  Future<Deal> createDeal(Map<String, dynamic> deal) async {
    createDealLoader = true;
    notifyListeners();
    final result = _dealsRepository.createDeal(deal);
    createDealLoader = false;
    notifyListeners();
    return result;
  }

  Future<Product> getProductById(String id) async {
    return _productsRepository.fetchProductById(id);
  }
}
