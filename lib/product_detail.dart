import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fradio_nullsafety/fradio_nullsafety.dart';
import 'package:tryplore/addtocart.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  bool flag = false;
  bool flag1 = false;
  int groupValue_4 = 0;
  final List<String> sizeValue = ['S', 'M', 'L', 'XL'];

  late final List<String> sizes;
  late final String selectedSize;
  late final void Function(String) onSizeSelected;

  String txt = '';
  final CarouselController _controller = CarouselController();
  int _current = 0;
  List<String> list = [
    'https://tryplore.com/uploads/catalog/products/main_image/DSCF6706.JPG',
    'https://tryplore.com/uploads/catalog/products/main_image/DSCF6707.JPG',
  ];
  final List<ImageProvider> _imageProviders = [
    Image.network(
            'https://tryplore.com/uploads/catalog/products/main_image/DSCF6706.JPG')
        .image,
    Image.network(
            'https://tryplore.com/uploads/catalog/products/main_image/DSCF6707.JPG')
        .image,
    Image.network(
            'https://tryplore.com/uploads/catalog/products/main_image/DSCF6706.JPG')
        .image,
    Image.network(
            'https://tryplore.com/uploads/catalog/products/main_image/DSCF6707.JPG')
        .image,
  ];
  List<String> images = [
    'https://kwabey.com/images/moon-knight-black-tshirt/360/1700.jpg',
    'https://kwabey.com/images/mood-of-the-day-white-tshirt/360/1695.jpg',
    'https://kwabey.com/images/never-quit-white-half-sleeves-tshirt-for-men/360/267.jpg',
    'https://kwabey.com/images/mood-of-the-day-white-tshirt/360/1695.jpg',
    'https://kwabey.com/images/never-quit-white-half-sleeves-tshirt-for-men/360/267.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tryplore'),
        actions: [
          Icon(Icons.favorite),
          SizedBox(
            width: 25,
          ),
          Icon(Icons.badge),
          SizedBox(
            width: 25,
          ),
          Icon(Icons.location_on_outlined),
          SizedBox(
            width: 5,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              '400067',
              style: TextStyle(fontSize: 16),
              // textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InteractiveViewer(
                clipBehavior: Clip.none,
                panEnabled: false,
                scaleEnabled: false,
                child: GestureDetector(
                  onTap: () {
                    final double scale = 3;
                    final zoomed = Matrix4.identity()..scale(scale);
                    MultiImageProvider multiImageProvider =
                        MultiImageProvider(_imageProviders);
                    showImageViewerPager(context, multiImageProvider);
                  },
                  child: CarouselSlider(
                    options: CarouselOptions(
                      viewportFraction: 1,
                      height: 500.0,
                      autoPlay: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      },
                    ),
                    items: list.map((item) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            // margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(),
                            child: Image.network(
                              '$item',
                              fit: BoxFit.fill,
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: list.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Container(
                      width: 9.0,
                      height: 9.0,
                      margin: EdgeInsets.only(
                        bottom: 0,
                        left: 4,
                        right: 4,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (_current == entry.key
                                ? Color.fromARGB(255, 7, 7, 7)
                                : Colors.blue[200]
                            // color: Color(0xFFFF4E00)
                            //     .withOpacity(_current == entry.key ? 0.9 : 0.4),
                            ),
                      ),
                    ),
                  );
                }).toList(),
              ),

              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  'Men\'s Round Neck Half Sleeve Regular Fit Printed T-Shirt',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      '\u{20B9}399',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      '\u{20B9}699',
                      style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ),
                ],
              ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Text('SELECT SIZE'),
              //       Text(
              //         'SIZE CHART >',
              //         style: TextStyle(color: Colors.green),
              //       ),
              //       Text(
              //         'FIT GUIDE >',
              //         style: TextStyle(color: Colors.green),
              //       ),
              //     ],
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AutoSizeText(
                  'Select Size',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17.5),
                  minFontSize: 17,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: sizeVariants(),
              ),
              Row(
                children: [
                  Text('   Size Chart'),
                  IconButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                                  content: Image.asset(
                                    'assets/chart2.jpeg',
                                    fit: BoxFit.cover,
                                  ),
                                ));
                      },
                      icon: Icon(Icons.rule_folder))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, right: 10, left: 10, bottom: 10),
                child: Container(
                  // width: 183,
                  // height: 56,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: CupertinoButton(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.bagShopping,
                            color: Colors.white,
                            size: 20,
                          ),
                          AutoSizeText(
                            "   TRY THIS",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.5,
                                fontWeight: FontWeight.w400),
                            maxFontSize: 17,
                            minFontSize: 17,
                          ),
                        ],
                      ),
                      onPressed: () {}),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 0, right: 10, left: 10, bottom: 10),
                child: Container(
                  // width: 183,
                  // height: 56,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: CupertinoButton(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.shoppingCart,
                            color: Colors.white,
                            size: 20,
                          ),
                          AutoSizeText(
                            "   BUY THIS",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.5,
                                fontWeight: FontWeight.w400),
                            maxFontSize: 17,
                            minFontSize: 17,
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const AddToCartProcessView()),
                        );
                      }),
                ),
              ),

              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    children: [
                      Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.blueAccent,
                        size: 30,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Add To Wishlist',
                        style:
                            TextStyle(color: Colors.blueAccent, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Vendor Name: Fashion Bug'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.restart_alt_rounded),
                    Text('Return Policy')
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      flag = !flag;
                    });
                  },
                  child: flag
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'PRODUCT DETAILS',
                              style: TextStyle(fontSize: 17),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.35,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Colour Name'),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text('Fabric'),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text('Neck Type'),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text('Sleeve'),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text('Pattern'),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text('Fit'),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text('Style'),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text('Car Instricuction'),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text('Origin'),
                                      SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.35,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Grey'),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text('Cotton'),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text('Round neck'),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text('Half sleeve'),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text('Printed'),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text('Regular Fit'),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text('Casual Wear'),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text('Machine Wash'),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text('Made in India'),
                                      SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      : Text(
                          'PRODUCT DETAILS',
                          style: TextStyle(fontSize: 17),
                        ),
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      flag1 = !flag1;
                    });
                  },
                  child: flag1
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'REVIEWS',
                              style: TextStyle(fontSize: 17),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Be the first one',
                              // style: TextStyle(fontSize: 17),
                            ),
                          ],
                        )
                      : Text(
                          'REVIEWS',
                          style: TextStyle(fontSize: 17),
                        ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Similar Products',
                  style: TextStyle(fontSize: 17),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5, right: 5, left: 5),
                height: 340,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 250,
                              margin: EdgeInsets.all(5),
                              width: 200,
                              child: Image.network(images[index],
                                  fit: BoxFit.cover),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'New Arrival',
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text(
                                    '\u{20B9} 399',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(' \u{20B9} 699',
                                      style: TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough,
                                          color: Colors.red)),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      )),
    );
  }

  Widget sizeVariants() {
    return SizedBox(
      height: 50,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right: index == 4 ? 0 : 10),
              child: FRadio(
                // normalColor: Colors.black,
                width: 50,
                height: 50,
                value: index + 1,
                groupValue: groupValue_4,
                onChanged: (value) {
                  setState(() {
                    groupValue_4 = value as int;
                  });
                },
                // gradient: LinearGradient(
                //   colors: [
                //     Color(0xffd4d4d4),
                //     Color(0xff9a9a9a),
                //     Color(0xff707070),
                //     Color(0xff454545),
                //   ],
                //   begin: Alignment(-0.1, -0.9),
                //   end: Alignment(1.0, 1.0),
                //   stops: [0.0, 0.2, 0.7, 1.0],
                // ),
                selectedColor: Colors.blueAccent,
                hasSpace: false,
                border: 1.5,
                child: Text(
                  "${sizeValue[index]}",
                  style: TextStyle(
                      color: Color.fromARGB(255, 9, 9, 9),
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
                hoverChild: Text(
                  "${sizeValue[index]}",
                  style: TextStyle(
                      color: Color.fromARGB(255, 7, 7, 7),
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
                selectedChild: Text("${sizeValue[index]}",
                    style: TextStyle(
                        color: Color.fromARGB(255, 5, 5, 5),
                        fontSize: 15,
                        fontWeight: FontWeight.w400)),
              ),
            );
          }),
    );
  }
}
