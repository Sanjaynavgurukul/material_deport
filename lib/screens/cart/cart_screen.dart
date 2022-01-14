import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_depo/theme/theme_provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);
  static const String routeName = '/cartScreen';

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_rounded),
        ),
        title: const Text('Your Bag'),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      color: Colors.white,
                      child: ExpansionTile(
                        initiallyExpanded: true,
                        tilePadding:
                            const EdgeInsets.only(left: 12.0, right: 12.0),
                        leading: Container(
                          padding: EdgeInsets.only(left: 12),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              'https://cdn.shopify.com/s/files/1/0577/4242/6264/products/Brown_Kahve_de84d825-3aaf-4aeb-8201-a0f8a7f694f9_800x.png?v=1628800648',
                              height: 54.0,
                              width: 54.0,
                            ),
                          ),
                        ),
                        expandedAlignment: Alignment.centerLeft,
                        title: Container(
                          child: ListTile(
                            contentPadding:
                                EdgeInsets.only(left: 12.0, right: 12.0),
                            title: Text(
                              "Some Name",
                              style: GoogleFonts.lato(
                                  fontSize: 16,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text("Quantity : 12"),
                          ),
                        ),
                        children: <Widget>[
                          Container(
                            constraints: new BoxConstraints(
                              minHeight: 40.0,
                              maxHeight: 300.0,
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 7),
                            color: Colors.white,
                            child: ListView(
                              shrinkWrap: true,
                              children: [
                                ListTile(
                                  contentPadding:
                                      EdgeInsets.only(left: 12.0, right: 12.0),
                                  title: Container(
                                    padding: EdgeInsets.only(
                                      left: 6,
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text("Amount without tax :"),
                                            Spacer(),
                                            Text("12,00")
                                          ],
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Row(
                                          children: [
                                            Text("Tax (GST 12%"),
                                            Spacer(),
                                            Text(
                                              '+' + "12",
                                              style: TextStyle(
                                                  color: Colors.black),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Row(
                                          children: [
                                            Text("Discount 12%"),
                                            Spacer(),
                                            Text('12')
                                          ],
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Row(
                                          children: [
                                            Text("Item Total : ",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    color: theme_color)),
                                            Spacer(),
                                            Text(
                                              '12,000',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: theme_color),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                color: Colors.grey.shade300,
                                              ),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                      5.0) //                 <--- border radius here
                                                  ),
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                1 != 0
                                                    ? InkWell(
                                                        onTap: () {},
                                                        child: Container(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 8,
                                                                  right: 8,
                                                                  top: 4,
                                                                  bottom: 4),
                                                          child: Icon(
                                                            Icons.remove,
                                                            color: Colors.black,
                                                          ),
                                                        ))
                                                    : SizedBox(
                                                        width: 0,
                                                      ),
                                                Container(
                                                  padding: EdgeInsets.only(
                                                      left: 8,
                                                      right: 8,
                                                      top: 4,
                                                      bottom: 4),
                                                  child: Center(
                                                    child: Text('12',
                                                        style: GoogleFonts.lato(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                theme_color)),
                                                  ),
                                                ),
                                                InkWell(
                                                    onTap: () {},
                                                    child: Container(
                                                      padding: EdgeInsets.only(
                                                          left: 8,
                                                          right: 8,
                                                          top: 4,
                                                          bottom: 4),
                                                      child: Icon(Icons.add),
                                                    )),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  })),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              height: 50,
              child: RaisedButton(
                elevation: 0,
                onPressed: () {
                  Navigator.pop(context);
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: theme_color,
                child: const Center(
                    child: Text(
                  'Checkout',
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
