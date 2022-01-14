import 'package:cloud_firestore/cloud_firestore.dart';

class ProductId {
  static const String CATEGORY = 'CATEGORY';
  static const String MARBLES = 'MARBLES';
  static const String CARPETS = 'CARPETS';
}

class Product {
  String? productName;
  String? description;
  String? price;
  String? productImageUrl;
  String? dbId;
  String? productId;

  Product(
      {this.productName,
        this.dbId,
        this.description,
        this.price,
        this.productId,
        this.productImageUrl});

  Map<String, dynamic> convertLedgerToMap(
      Product value,
      ) {
    Map<String, dynamic> regionData = <String, dynamic>{};
    //Transaction Section :D
    regionData['productName'] = value.productName;
    regionData['description'] = value.description;
    regionData['price'] = value.price;
    regionData['productImageUrl'] = value.productImageUrl;
    regionData['productId'] = value.productId;
    return regionData;
  }

  // To convert the details from DocumentSnapshot into Ledger object
  Product.fromDocumentSnapshot(DocumentSnapshot json) {
    productName = json['productName'];
    description = json['description'];
    price = json['price'];
    productImageUrl = json['productImageUrl'];
    productId = json['productId'];
  }
}



class Products{
  late String categoryLabel;
  late List<Product> products;
  Products({required this.products, required this.categoryLabel});
}
