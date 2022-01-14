import 'package:cloud_firestore/cloud_firestore.dart';

class Provider {
  FirebaseFirestore db = FirebaseFirestore.instance;

  Stream<QuerySnapshot> getProducts() {
    return db.collection('products').snapshots();
  }

  Stream<QuerySnapshot> getMyAddedCartItem({required String userId}) {
    return db.collection('cart').where('userId', isEqualTo: userId).snapshots();
  }

  Stream<QuerySnapshot> getMyCartItem(
      {required List<String> itemIds}) {
    return db.collection('cart').where('itemId', whereIn: itemIds).snapshots();
  }

  Future<void> updateCartItem(
      {required String docId,
      bool remove = false,
      required Map<String, dynamic> item}) async {
    if (remove) {
      return db
          .collection('cart')
          .doc(docId)
          .delete()
          .then((value) => print('Deleted'))
          .whenComplete(() => print('Deleted'))
          .catchError((onError) => print('Delete action failed'));
    }
    return db
        .collection('cart')
        .doc(docId)
        .update(item)
        .then((value) => print('updated'))
        .whenComplete(() => print('updated'))
        .catchError((onError) => print('update failed'));
  }
}
