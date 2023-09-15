import 'dart:convert';

class StorsModel {
  final String address;
  final String city;
  final int id;
  final bool isActive;
  final String name;
  final List<Stock> stock;

  StorsModel({
    required this.address,
    required this.city,
    required this.id,
    required this.isActive,
    required this.name,
    required this.stock,
  });

  StorsModel copyWith({
    String? address,
    String? city,
    int? id,
    bool? isActive,
    String? name,
    List<Stock>? stock,
  }) => 
    StorsModel(
      address: address ?? this.address,
      city: city ?? this.city,
      id: id ?? this.id,
      isActive: isActive ?? this.isActive,
      name: name ?? this.name,
      stock: stock ?? this.stock,
    );

  factory StorsModel.fromRawJson(String str) => StorsModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StorsModel.fromJson(Map<String, dynamic> json) => StorsModel(
    address: json["address"],
    city: json["city"],
    id: json["id"],
    isActive: json["isActive"],
    name: json["name"],
    stock: List<Stock>.from(json["stock"].map((x) => Stock.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "address": address,
    "city": city,
    "id": id,
    "isActive": isActive,
    "name": name,
    "stock": List<dynamic>.from(stock.map((x) => x.toJson())),
  };
}

class Stock {
  final int amount;
  final int productId;

  Stock({
    required this.amount,
    required this.productId,
  });

  Stock copyWith({
    int? amount,
    int? productId,
  }) => 
    Stock(
      amount: amount ?? this.amount,
      productId: productId ?? this.productId,
    );

  factory Stock.fromRawJson(String str) => Stock.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Stock.fromJson(Map<String, dynamic> json) => Stock(
    amount: json["amount"],
    productId: json["productId"],
  );

  Map<String, dynamic> toJson() => {
    "amount": amount,
    "productId": productId,
  };
}
