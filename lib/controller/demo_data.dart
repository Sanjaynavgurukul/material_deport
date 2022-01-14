import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:material_depo/model/product.dart';

class DemoData {
  void addProduct() {
    print('linst length ${d().length}');
    for (Product item in d()) {

     var map = Product().convertLedgerToMap(item);
      FirebaseFirestore.instance
          .collection('products')
          .add(map)
          .then((value) => print('Stock Added'))
          .onError((error, stackTrace) => print('Stock not added'));
    }
  }

  List<Product> d() {
    return [
      //Category
      Product(
          price: "",
          description: 'Please add some Description',
          productId: ProductId().CATEGORY,
          productImageUrl:
              'https://cdn.shopify.com/s/files/1/0577/4242/6264/files/brown-carpet-texture-2021-04-05-08-22-40-utc_400x.jpg?v=1626943319',
          productName: 'Carpets'),
      Product(
          price: "",
          description: 'Please add some Description',
          productId: ProductId().CATEGORY,
          productImageUrl:
              'https://cdn.shopify.com/s/files/1/0577/4242/6264/files/Mask_Group_1_300x.png?v=1626943520',
          productName: 'Marbels'),
      Product(
          price: "",
          description: 'Please add some Description',
          productId: ProductId().CATEGORY,
          productImageUrl:
              'https://cdn.shopify.com/s/files/1/0577/4242/6264/files/Mask_Group_2_300x.png?v=1626943646',
          productName: 'Granites'),
      Product(
          price: "",
          description: 'Please add some Description',
          productId: ProductId().CATEGORY,
          productImageUrl:
              'https://cdn.shopify.com/s/files/1/0577/4242/6264/files/Mask_Group_6_400x.png?v=1626944801',
          productName: 'Curtains'),
      Product(
          price: "",
          description: 'Please add some Description',
          productId: ProductId().CATEGORY,
          productImageUrl:
              'https://cdn.shopify.com/s/files/1/0577/4242/6264/files/AS369181_400x.jpg?v=1630506897',
          productName: 'Wallpaper'),
      Product(
          price: "",
          description: 'Please add some Description',
          productId: ProductId().CATEGORY,
          productImageUrl:
              'https://cdn.shopify.com/s/files/1/0577/4242/6264/collections/Laminates_400x.jpg?v=1627642556',
          productName: 'Laminated'),
      Product(
          price: "",
          description: 'Please add some Description',
          productId: ProductId().CATEGORY,
          productImageUrl:
              'https://cdn.shopify.com/s/files/1/0577/4242/6264/collections/GPG_400x.jpg?v=1628061525',
          productName: 'GPG'),
      Product(
          price: "",
          description: 'Please add some Description',
          productId: ProductId().CATEGORY,
          productImageUrl:
              'https://cdn.shopify.com/s/files/1/0577/4242/6264/collections/Veneers_400x.jpg?v=1627549468',
          productName: 'Veneers'),

      //Marbles
      Product(
          price: "300-450 per SFT",
          description: 'Please add some Description',
          productId: ProductId().MARBLES,
          productImageUrl:
              'https://cdn.shopify.com/s/files/1/0577/4242/6264/products/DSC_5829__01__01_0815b4f8-2eac-41c6-86a9-777c55bf0349_900x.jpg?v=1629967842',
          productName:
              'Armani Brown 3D - Marble from One Stone by Archean and Icon'),
      Product(
          price: "300-450 per SFT",
          description: 'Please add some Description',
          productId: ProductId().MARBLES,
          productImageUrl:
              'https://cdn.shopify.com/s/files/1/0577/4242/6264/products/DSC_5895__01__01__01_4f82430d-9605-4be0-9a80-614859a69d71_900x.jpg?v=1629967896',
          productName:
              'Black Marquina Antique - Marble from One Stone by Archean and Icon'),
      Product(
          price: "300-450 per SFT",
          description: 'Please add some Description',
          productId: ProductId().MARBLES,
          productImageUrl:
              'https://cdn.shopify.com/s/files/1/0577/4242/6264/products/DSC_6055__01__01_8c43306c-d203-4f6e-b314-d5e8c68260cc_900x.jpg?v=1629968196',
          productName:
              'Agora Beige - Marble from One Stone by Archean and Icon'),
      Product(
          price: "300-450 per SFT",
          description: 'Please add some Description',
          productId: ProductId().MARBLES,
          productImageUrl:
              'https://cdn.shopify.com/s/files/1/0577/4242/6264/products/DSC_5829__01__01_0815b4f8-2eac-41c6-86a9-777c55bf0349_900x.jpg?v=1629967842',
          productName:
              'Armani Brown 3D - Marble from One Stone by Archean and Icon'),
      Product(
          price: "300-450 per SFT",
          description: 'Please add some Description',
          productId: ProductId().MARBLES,
          productImageUrl:
              'https://cdn.shopify.com/s/files/1/0577/4242/6264/products/DSC_5895__01__01__01_4f82430d-9605-4be0-9a80-614859a69d71_900x.jpg?v=1629967896',
          productName:
              'Black Marquina Antique - Marble from One Stone by Archean and Icon'),
      Product(
          price: "300-450 per SFT",
          description: 'Please add some Description',
          productId: ProductId().MARBLES,
          productImageUrl:
              'https://cdn.shopify.com/s/files/1/0577/4242/6264/products/DSC_6055__01__01_8c43306c-d203-4f6e-b314-d5e8c68260cc_900x.jpg?v=1629968196',
          productName:
              'Agora Beige - Marble from One Stone by Archean and Icon'),
      //Carpets
      Product(
          price: "120-150 per SFT",
          description: 'Please add some Description',
          productId: ProductId().CARPETS,
          productImageUrl:
              'https://cdn.shopify.com/s/files/1/0577/4242/6264/products/Royal_Blue_ec8255fb-892a-4c2d-84be-6dce5790aadb_800x.png?v=1628800936',
          productName: 'Chintz Collection Carpets by Golden Carpets Ltd'),
      Product(
          price: "120-150 per SFT",
          description: 'Please add some Description',
          productId: ProductId().CARPETS,
          productImageUrl:
              'https://cdn.shopify.com/s/files/1/0577/4242/6264/products/Brown_Kahve_de84d825-3aaf-4aeb-8201-a0f8a7f694f9_800x.png?v=1628800648',
          productName: 'Damask Collection Carpets by Golden Carpets Ltd'),
      Product(
          price: "120-150 per SFT",
          description: 'Please add some Description',
          productId: ProductId().CARPETS,
          productImageUrl:
              'https://cdn.shopify.com/s/files/1/0577/4242/6264/products/Brown_Bottle_Green_6cb518b5-df0f-493b-8eb0-ead409f72e41_800x.png?v=1628800769',
          productName: 'Arixa Collection Carpets by Golden Carpets Ltd'),
      Product(
          price: "120-150 per SFT",
          description: 'Please add some Description',
          productId: ProductId().CARPETS,
          productImageUrl:
              'https://cdn.shopify.com/s/files/1/0577/4242/6264/products/Royal_Blue_ec8255fb-892a-4c2d-84be-6dce5790aadb_800x.png?v=1628800936',
          productName: 'Chintz Collection Carpets by Golden Carpets Ltd'),
      Product(
          price: "120-150 per SFT",
          description: 'Please add some Description',
          productId: ProductId().CARPETS,
          productImageUrl:
              'https://cdn.shopify.com/s/files/1/0577/4242/6264/products/Brown_Kahve_de84d825-3aaf-4aeb-8201-a0f8a7f694f9_800x.png?v=1628800648',
          productName: 'Damask Collection Carpets by Golden Carpets Ltd'),
      Product(
          price: "120-150 per SFT",
          description: 'Please add some Description',
          productId: ProductId().CARPETS,
          productImageUrl:
              'https://cdn.shopify.com/s/files/1/0577/4242/6264/products/Brown_Bottle_Green_6cb518b5-df0f-493b-8eb0-ead409f72e41_800x.png?v=1628800769',
          productName: 'Arixa Collection Carpets by Golden Carpets Ltd'),
    ];
  }
}
