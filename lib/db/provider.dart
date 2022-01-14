import 'package:cloud_firestore/cloud_firestore.dart';

class Provider{
  Stream<QuerySnapshot> getProducts() {
    return FirebaseFirestore.instance
        .collection('products')
        .snapshots();
  }
}
