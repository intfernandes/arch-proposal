class Deal {
  final String id;
  final String brokerId;
  final String customerId;
  final Map product;

  Deal({
    required this.id,
    required this.brokerId,
    required this.customerId,
    required this.product,
  });

  factory Deal.fromMap(Map map) {
    return Deal(
      id: map['id'],
      brokerId: map['brokerId'],
      customerId: map['customerId'],
      product: map['product'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'brokerId': brokerId,
      'customerId': customerId,
      'product': product,
    };
  }
}
