class CarouselModel {
  String? imageUrl;
  bool? left;
  String? buttonLabel;
  String? content;
  String? id;

  CarouselModel(this.imageUrl, this.left,
      {this.content, this.buttonLabel, this.id});


  static List<CarouselModel> imgList = [
    CarouselModel(
        'https://cdn.shopify.com/s/files/1/0577/4242/6264/files/slideshow_secondary_laptop_ce5a44c5-363e-44ba-b662-c31ff060e31a_2000x.png?v=1627489256',
        true,
        content: 'Some Content',
        buttonLabel: 'Purchase'),
    CarouselModel(
        'https://cdn.shopify.com/s/files/1/0577/4242/6264/files/slideshow_main_laptop_2000x.png?v=1627488146',
        true,
        content: 'Some Content',
        buttonLabel: 'Purchase'),
    CarouselModel(
        'https://cdn.shopify.com/s/files/1/0577/4242/6264/files/slideshow_1_laptop_2000x.png?v=1627470750',
        true,
        content: 'Some Content',
        buttonLabel: 'Purchase'),
    CarouselModel(
        'https://cdn.shopify.com/s/files/1/0577/4242/6264/files/slideshow_main_laptop_2000x.png?v=1627488146',
        true,
        content: 'Some Content',
        buttonLabel: 'Purchase'),
  ];

}