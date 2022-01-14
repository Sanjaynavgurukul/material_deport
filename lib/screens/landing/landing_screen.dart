import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_depo/controller/demo_data.dart';
import 'package:material_depo/model/carousel_model.dart';
import 'package:material_depo/model/catagory_model.dart';
import 'package:material_depo/nav_bar/nav_bar.dart';
import 'package:material_depo/new/home_search_bar.dart';
import 'package:material_depo/screens/landing/bloc/landing_bloc.dart';
import 'package:material_depo/screens/landing/widgets/about.dart';
import 'package:material_depo/screens/landing/widgets/category_item_widget.dart';
import 'package:material_depo/screens/landing/widgets/how_its_work.dart';

class LandingScreen extends StatefulWidget {
  static const String routeName = '/landingScreen';

  const LandingScreen({Key? key}) : super(key: key);

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

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
    // TODO: implement build
    return BlocProvider(
      create: (_) => LandingBloc()..add(FetchProduct()),
      child: Scaffold(
        key: _scaffoldKey,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            DemoData().addProduct();
          },
          child: const Icon(Icons.add),
        ),
        drawer: const NavBar(),
        body: CupertinoPageScaffold(
          child: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  CupertinoSliverNavigationBar(
                      heroTag: 'navigationLedgers',
                      largeTitle: Container(
                        padding: const EdgeInsets.only(right: 12),
                        child: CupertinoSearchTextField(
                          onChanged: (String value) {
                            print('The text has changed to: $value');
                          },
                          onSubmitted: (String value) {
                            print('Submitted text: $value');
                          },
                        ),
                      ),
                      leading: InkWell(
                        onTap: () {
                          _scaffoldKey.currentState!.openDrawer();
                        },
                        child: const Icon(
                          Icons.menu_sharp,
                          size: 24,
                        ),
                      ),
                      trailing: const Icon(
                        Icons.shopping_cart_outlined,
                        size: 24,
                      ),
                      middle: InkWell(
                        onTap: () {
                          _scaffoldKey.currentState!.openDrawer();
                        },
                        child: Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(left: 12),
                            child: const Text(
                              'Material Deport',
                              style: TextStyle(fontSize: 20, letterSpacing: 1),
                              textAlign: TextAlign.center,
                            )),
                      ))
                ];
              },
              body: ListView(
                shrinkWrap: true,
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 2.0,
                      viewportFraction: 1,
                    ),
                    items: imageSliders,
                  ),
                  BlocBuilder<LandingBloc, LandingState>(
                      builder: (context, state) {
                    if (state is LandingInitial) {
                      return const Center(
                        child: CupertinoActivityIndicator(),
                      );
                    } else if (state is ProductLoaded) {
                      return ListView.builder(
                        itemCount: state.data.length,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          if (index == 2) {
                            return SizedBox(
                              height: 150,
                              child: ListView.builder(
                                itemCount: 10,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) => Container(
                                  height: 150,
                                  width: 150,
                                  margin: EdgeInsets.all(10),
                                  child: Center(
                                    child: Text(
                                      "${state.data[index].categoryLabel}",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  color: Colors.green[700],
                                ),
                              ),
                            );
                          }
                          return ListTile(
                            title: Text(
                              "${state.data[index].categoryLabel}",
                            ),
                          );
                        },
                      );
                    } else {
                      return const Center(
                        child: Text('Something Went wrong'),
                      );
                    }
                  }),
                  const HowItsWork(),
                  const About()
                ],
              )),
        ),
      ),
    );
  }
}
