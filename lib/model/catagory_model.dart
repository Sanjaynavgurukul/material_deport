class CategoryModel {
  String? itemLabel;
  String? itemImage;
  String? id;

  CategoryModel(this.itemLabel, this.itemImage, this.id);

 static List<CategoryModel> getData() {
    return [
      CategoryModel(
          'Item one',
          'https://cdn.shopify.com/s/files/1/0577/4242/6264/files/Mask_Group_2_300x.png?v=1626943646',
          'id'),
      CategoryModel(
          'Item one',
          'https://cdn.shopify.com/s/files/1/0577/4242/6264/files/Mask_Group_2_300x.png?v=1626943646',
          'id'),
      CategoryModel(
          'Item one',
          'https://cdn.shopify.com/s/files/1/0577/4242/6264/files/Mask_Group_2_300x.png?v=1626943646',
          'id'),
      CategoryModel(
          'Item one',
          'https://cdn.shopify.com/s/files/1/0577/4242/6264/files/Mask_Group_2_300x.png?v=1626943646',
          'id'),
      CategoryModel(
          'Item one',
          'https://cdn.shopify.com/s/files/1/0577/4242/6264/files/Mask_Group_2_300x.png?v=1626943646',
          'id'),
      CategoryModel(
          'Item one',
          'https://cdn.shopify.com/s/files/1/0577/4242/6264/files/Mask_Group_2_300x.png?v=1626943646',
          'id'),
      CategoryModel(
          'Item one',
          'https://cdn.shopify.com/s/files/1/0577/4242/6264/files/Mask_Group_2_300x.png?v=1626943646',
          'id'),
    ];
  }
}
