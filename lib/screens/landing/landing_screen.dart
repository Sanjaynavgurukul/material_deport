import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:material_depo/model/carousel_model.dart';
import 'package:material_depo/model/catagory_model.dart';
import 'package:material_depo/nav_bar/nav_bar.dart';
import 'package:material_depo/screens/landing/widgets/category_item_widget.dart';

class LandingScreen extends StatefulWidget {
  static const String routeName = '/landingScreen';

  const LandingScreen({Key? key}) : super(key: key);

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  final List<Widget> imageSliders = CarouselModel.imgList
      .map((item) => Stack(
            children: <Widget>[
              Image.network(
                item.imageUrl!,
                fit: BoxFit.fitHeight,
                width: 1000.0,
              ),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(200, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0)
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: Column(
                    children: [
                      Text(
                        'Some Title',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Some Description',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(),
        drawer: const NavBar(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                viewportFraction: 1,
              ),
              items: imageSliders,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 18, top: 12, bottom: 12),
              child: Text(
                'Collections by Category',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 140,
              width: double.infinity,
              child: ListView.builder(
                  padding: EdgeInsets.only(left: 18, right: 18),
                  shrinkWrap: true,
                  itemCount: CategoryModel.getData().length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    CategoryModel item = CategoryModel.getData()[index];
                    return CategoryItemWidget(
                      item: item,
                    );
                  }),
            ),
            SizedBox(
              width: double.infinity,
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 220,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) =>
                      Container(height: 20, child: const Text('Some Text'))),
            )
          ],
        ));
  }
}

//
// List<Widget> _children = () sync* {
//   yield AspectRatio(
//     aspectRatio: 16 / 9,
//     child: ListView(
//       scrollDirection: Axis.horizontal,
//       physics: const AlwaysScrollableScrollPhysics(),
//       children: List.generate(12, (int index) {
//         return AspectRatio(
//           aspectRatio: 4 / 3,
//           child: Padding(
//             padding: const EdgeInsets.all(12.0),
//             child: Placeholder(),
//           ),
//         );
//       }),
//     ),
//   );
//
//   yield* List.generate(
//     25,
//         (int index) {
//       return SizedBox(
//         height: 160.0,
//         width: 60.0,
//         child: Card(
//           color: index.isEven ? Colors.purpleAccent : Colors.pinkAccent,
//         ),
//       );
//     },
//   );
// }()
//     .toList();
//
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(
//       title: Text('Some Text'),
//     ),
//     body: ListView(children: _children),
//   );
// }
// }
