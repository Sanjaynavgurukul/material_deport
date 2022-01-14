import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:material_depo/db/provider.dart';

class Repository {
  final Provider _provider = Provider();

  Stream<QuerySnapshot> products() => _provider.getProducts();

  Stream<QuerySnapshot> getMyAddedCartItem({required String userId}) =>
      _provider.getMyAddedCartItem(userId: userId);

  Stream<QuerySnapshot> getMyCartItem({required List<String> itemIds}) =>
      _provider.getMyCartItem(itemIds: itemIds);

  Future<void> updateItem(
          {required String docId,
          bool remove = false,
          required Map<String, dynamic> item}) =>
      _provider.updateCartItem(docId: docId, item: item, remove: remove);
}
