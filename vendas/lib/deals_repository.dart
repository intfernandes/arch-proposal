import 'package:core/core.dart';
import 'package:design/design.dart';
import 'package:vendas/deal.dart';

export 'deal.dart';

class DealsRepository {
  final DealsService _dealsService;
  final ProductsService _productsService;

  DealsRepository(
      {required DealsService dealsService,
      required ProductsService productsService})
      : _dealsService = dealsService,
        _productsService = productsService;

  Future<List<Deal>> fetchDeals() async {
    final deals = await _dealsService.fetchDeals();
    return deals.map((deal) => Deal.fromMap(deal)).toList();
  }

  Future<Deal> fetchDealById(String id) async {
    final deal = await _dealsService.fetchDealById(id);
    return Deal.fromMap(deal);
  }

  Future<Deal> createDeal(Map payload) async {
    final product =
        await _productsService.fetchProductById(payload['productId']);

    final deal = Deal(
      id: payload['id'],
      brokerId: payload['brokerId'],
      customerId: payload['customerId'],
      product: product,
    );

    final result = await _dealsService.createDeal(deal.toMap());

    if (result.isNotEmpty) {
      Alerts.success('Sucesso', 'Negócio criado com sucesso');
    }

    return Deal.fromMap(result);
  }
}
