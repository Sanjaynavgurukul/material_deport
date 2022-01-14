import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:material_depo/db/provider.dart';

class Repository{
  final Provider _provider = Provider();
  Stream<QuerySnapshot> products() => _provider.getProducts();
}