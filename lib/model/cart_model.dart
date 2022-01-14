import 'package:cloud_firestore/cloud_firestore.dart';

class CartModel{
  String? userId;
  String? itemId;
  num? qty;

  CartModel();

  Map<String, dynamic> convertLedgerToMap(
      CartModel value,
      ) {
    Map<String, dynamic> regionData = <String, dynamic>{};
    //Transaction Section :D
    regionData['userId'] = value.userId;
    regionData['itemId'] = value.itemId;
    regionData['qty'] = value.qty;
    return regionData;
  }

  // To convert the details from DocumentSnapshot into Ledger object
  CartModel.fromDocumentSnapshot(DocumentSnapshot json) {
    userId = json['userId'];
    itemId = json['itemId'];
    qty = json['qty'];
  }
}