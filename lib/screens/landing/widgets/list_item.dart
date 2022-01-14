import 'package:flutter/material.dart';
import 'package:material_depo/model/product.dart';

class ListItem extends StatelessWidget {
  const ListItem({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    switch (product.productId) {
      case ProductId.CARPETS:
        return carpetItem(product);
      case ProductId.MARBLES:
        return marbleItem(product);
      default:
        return categoryItem(product);
    }
  }

  //Category Item
  Widget categoryItem(Product product) {
    return Container(
      margin: const EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipOval(
            child: Image.network(
              product.productImageUrl!,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            '${product.productName}',
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 14.0,
            ),
          ),
        ],
      ),
    );
  }

  //Marble Item
  Widget marbleItem(Product product) {
    return Container(
      constraints: const BoxConstraints(minWidth: 100, maxWidth: 150),
      margin: const EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              product.productImageUrl!,
              height: 100.0,
              width: 150.0,
            ),
          ),
          ListTile(
            contentPadding: const EdgeInsets.only(left: 4.0, right: 4.0),
            dense: true,
            title: Text(
              '${product.productName}',
              maxLines: 2,
            ),
            subtitle: Text('${product.description}'),
            trailing: Icon(Icons.add),
          )
        ],
      ),
    );
  }

  //Carpets
  Widget carpetItem(Product product) {
    return Container(
      constraints: const BoxConstraints(minWidth: 100, maxWidth: 150),
      margin: const EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              product.productImageUrl!,
              height: 100.0,
              width: 150.0,
              fit: BoxFit.fill,
            ),
          ),
          ListTile(
            contentPadding: const EdgeInsets.only(left: 4.0, right: 4.0),
            dense: true,
            title: Text(
              '${product.productName}',
              maxLines: 2,
            ),
            subtitle: Text('${product.description}'),
            trailing: Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
