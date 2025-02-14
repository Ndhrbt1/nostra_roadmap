part of '_index.dart';

class Product {
  final String id;
  final String name;
  final int price;
  final int qty;
  final String createdAt;
  final String updatedAt;
  Product({
    this.id = '',
    this.name = '',
    this.price = 0,
    this.qty = 0,
    this.createdAt = '',
    this.updatedAt = '',
  });

  // * --------- Dibuat terpisah -------------

  static Product random() {
    return Product(
      id: UniqueKey().toString().substring(2, 7),
      name: generateWordPairs().take(2).join(' '),
      price: Random().nextInt(99999999),
      qty: Random().nextInt(999),
      createdAt: DateTime.now().toString(),
    );
  }

  static Product init() {
    return Product(
      id: '00000',
      name: 'Laptop',
      price: 12345,
      qty: 10,
      createdAt: DateTime.now().toString(),
    );
  }

  static Product init2() {
    return Product(
      id: '00001',
      name: 'Mouse',
      price: 67890,
      qty: 20,
      createdAt: DateTime.now().toString(),
    );
  }

  // * ---------------------------------------

  Product copyWith({
    String? id,
    String? name,
    int? price,
    int? qty,
    String? createdAt,
    String? updatedAt,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      qty: qty ?? this.qty,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'name': name});
    result.addAll({'price': price});
    result.addAll({'qty': qty});
    result.addAll({'created_at': createdAt});
    result.addAll({'updated_at': updatedAt});

    return result;
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      price: map['price']?.toInt() ?? 0,
      qty: map['qty']?.toInt() ?? 0,
      createdAt: map['created_at'] ?? '',
      updatedAt: map['updated_at'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) => Product.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Product(id: $id, name: $name, price: $price, qty: $qty, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Product &&
        other.id == id &&
        other.name == name &&
        other.price == price &&
        other.qty == qty &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ price.hashCode ^ qty.hashCode ^ createdAt.hashCode ^ updatedAt.hashCode;
  }

  static generateWordPairs() {}
}
