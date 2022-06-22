// import 'package:da_techno/Screens/smart_watches.dart';
// import 'package:da_techno_app/screen/product_list/Fashion/ProductDetails/fashion_product_details_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:tryplore/product_detail.dart';

class Mens extends StatefulWidget {
  const Mens({Key? key}) : super(key: key);

  @override
  State<Mens> createState() => _MensState();
}

class _MensState extends State<Mens> {
  List<String> tag = [
    'Hot Selling',
    'Rust Free',
    'Few Left',
    'Selling Fast',
    'Hot Selling',
    'Rust Free',
    'Few Left',
    'Selling Fast',
  ];

  List<String> list = [
    'https://kwabey.com/images/moon-knight-black-tshirt/360/1700.jpg',
    'https://kwabey.com/images/mood-of-the-day-white-tshirt/360/1695.jpg',
    'https://kwabey.com/images/never-quit-white-half-sleeves-tshirt-for-men/360/267.jpg',
    'https://kwabey.com/images/mood-of-the-day-white-tshirt/360/1695.jpg',
    'https://kwabey.com/images/never-quit-white-half-sleeves-tshirt-for-men/360/267.jpg',
    'https://kwabey.com/images/never-quit-white-half-sleeves-tshirt-for-men/360/267.jpg',
    'https://kwabey.com/images/mood-of-the-day-white-tshirt/360/1695.jpg',
    'https://kwabey.com/images/never-quit-white-half-sleeves-tshirt-for-men/360/267.jpg',
  ];
  List<String> labelName = [
    'abcd',
    'dd',
    'cdcdc',
    'abcd',
    'dd',
    'cdcdc',
    'abcd',
    'dd',
    'cdcdc',
    'abcd',
    'dd',
    'cdcdc',
    'abcd',
    'dd',
    'cdcdc',
    'abcd',
    'dd',
    'cdcdc',
    'abcd',
    'dd',
  ];
  int countValue = 2;

  num aspectWidth = 2;

  num aspectHeight = 1;

  changeMode() {
    if (countValue == 2) {
      setState(() {
        countValue = 1;
        aspectWidth = 3;
        aspectHeight = 2;
      });
    } else {
      setState(() {
        countValue = 2;
        aspectWidth = 2;
        aspectHeight = 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tryplore'),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 25,
          ),
          Icon(Icons.notifications),
          SizedBox(
            width: 25,
          ),
          Icon(Icons.favorite),
          SizedBox(
            width: 25,
          ),
          Icon(Icons.badge),
          SizedBox(
            width: 25,
          ),
        ],
      ),
      // backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(10),
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.list,
                        ),
                        Text('Filter'),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        showCupertinoModalPopup(
                            context: context,
                            builder: (context) {
                              return CupertinoActionSheet(
                                title: Text('Sort By'),
                                actions: [
                                  CupertinoActionSheetAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      print(
                                        'Featured',
                                      );
                                    },
                                    child: Text(
                                      'Featured',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 63, 57, 57)),
                                    ),
                                    // isDefaultAction: true,
                                  ),
                                  CupertinoActionSheetAction(
                                    onPressed: () {
                                      setState(() {
                                        labelName
                                          ..sort(((a, b) => b.compareTo(a)));
                                      });
                                      Navigator.pop(context);
                                      print('low to high');
                                    },
                                    child: Text(
                                      'Price: Low to High',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 63, 57, 57)),
                                    ),
                                  ),
                                  CupertinoActionSheetAction(
                                    onPressed: () {
                                      setState(() {
                                        labelName
                                          ..sort(((a, b) => a.compareTo(b)));
                                      });
                                      Navigator.pop(context);
                                      print('hightolow');
                                    },
                                    child: Text(
                                      'Price: High to Low',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 63, 57, 57)),
                                    ),
                                  ),
                                  CupertinoActionSheetAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      print('new');
                                    },
                                    child: Text(
                                      'Newest Arrival',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 63, 57, 57)),
                                    ),
                                  ),
                                  CupertinoActionSheetAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      print('avg cust');
                                    },
                                    child: Text(
                                      'Avg. Customer Review',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 63, 57, 57)),
                                    ),
                                  ),
                                ],
                              );
                            });
                      },
                      child: Row(
                        children: [
                          Icon(Icons.sort_outlined),
                          Text('Sort'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 5,
                color: Color.fromARGB(255, 241, 237, 237),
                width: MediaQuery.of(context).size.width,
              ),
              // SizedBox(
              //   height: 5,
              // ),
              Container(
                // height: 800,
                // width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(15.0),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GridView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          // childAspectRatio: 3 / 2,
                          // childAspectRatio: countValue == 2
                          //     ? MediaQuery.of(context).size.width /
                          //         (MediaQuery.of(context).size.height / 1.4)
                          //     : (aspectWidth / aspectHeight * 1.2),
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 10,
                          mainAxisExtent: 320),
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductDetail()),
                            );
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.49,
                            height: 354.8,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.49,
                                  height: 235.73,
                                  child: Image.network(
                                    '${list[0]}',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 7.5, right: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          AutoSizeText(
                                            '${tag[0]}',
                                            style: TextStyle(
                                                color: Colors.red[500],
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12),
                                            minFontSize: 12,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          Icon(
                                            FontAwesomeIcons.heart,
                                            size: 20,
                                            color: Colors.black54,
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      AutoSizeText(
                                        'Men Solid Knitted Round Neck ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 15.5,
                                            color: Colors.black54),
                                        minFontSize: 15,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      // decoration: TextDecoration.lineThrough,
                                      Row(
                                        children: [
                                          Text(
                                            '\u{20B9} 399',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(' \u{20B9} 699',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  color: Colors.red)),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.49,
                          height: 354.8,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.49,
                                height: 235.73,
                                child: Image.network(
                                  '${list[1]}',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 7.5, right: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        AutoSizeText(
                                          '${tag[1]}',
                                          style: TextStyle(
                                              color: Colors.red[500],
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12),
                                          minFontSize: 12,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Icon(
                                          FontAwesomeIcons.heart,
                                          size: 20,
                                          color: Colors.black54,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    AutoSizeText(
                                      'Men Solid Knitted Round Neck ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 15.5,
                                          color: Colors.black54),
                                      minFontSize: 15,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    // decoration: TextDecoration.lineThrough,
                                    Row(
                                      children: [
                                        Text(
                                          '\u{20B9} 399',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(' \u{20B9} 699',
                                            style: TextStyle(
                                                fontSize: 14,
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                color: Colors.red)),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductDetail()),
                            );
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.49,
                            height: 354.8,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.49,
                                  height: 235.73,
                                  child: Image.network(
                                    '${list[2]}',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 7.5, right: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          AutoSizeText(
                                            '${tag[2]}',
                                            style: TextStyle(
                                                color: Colors.red[500],
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12),
                                            minFontSize: 12,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          Icon(
                                            FontAwesomeIcons.heart,
                                            size: 20,
                                            color: Colors.black54,
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      AutoSizeText(
                                        'Men Solid Knitted Round Neck ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 15.5,
                                            color: Colors.black54),
                                        minFontSize: 15,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      // decoration: TextDecoration.lineThrough,
                                      Row(
                                        children: [
                                          Text(
                                            '\u{20B9} 399',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(' \u{20B9} 699',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  color: Colors.red)),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.49,
                          height: 354.8,
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.49,
                                height: 235.73,
                                child: Image.network(
                                  '${list[3]}',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 7.5, right: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        AutoSizeText(
                                          '${tag[3]}',
                                          style: TextStyle(
                                              color: Colors.red[500],
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12),
                                          minFontSize: 12,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Icon(
                                          FontAwesomeIcons.heart,
                                          size: 20,
                                          color: Colors.black54,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    AutoSizeText(
                                      'Men Solid Knitted Round Neck ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 15.5,
                                          color: Colors.black54),
                                      minFontSize: 15,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    // decoration: TextDecoration.lineThrough,
                                    Row(
                                      children: [
                                        Text(
                                          '\u{20B9} 399',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(' \u{20B9} 699',
                                            style: TextStyle(
                                                fontSize: 14,
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                color: Colors.red)),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.49,
                          height: 354.8,
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.49,
                                height: 235.73,
                                child: Image.network(
                                  '${list[4]}',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 7.5, right: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        AutoSizeText(
                                          '${tag[4]}',
                                          style: TextStyle(
                                              color: Colors.red[500],
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12),
                                          minFontSize: 12,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Icon(
                                          FontAwesomeIcons.heart,
                                          size: 20,
                                          color: Colors.black54,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    AutoSizeText(
                                      'Men Solid Knitted Round Neck ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 15.5,
                                          color: Colors.black54),
                                      minFontSize: 15,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    // decoration: TextDecoration.lineThrough,
                                    Row(
                                      children: [
                                        Text(
                                          '\u{20B9} 399',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(' \u{20B9} 699',
                                            style: TextStyle(
                                                fontSize: 14,
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                color: Colors.red)),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.49,
                          height: 354.8,
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.49,
                                height: 235.73,
                                child: Image.network(
                                  '${list[5]}',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 7.5, right: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        AutoSizeText(
                                          '${tag[5]}',
                                          style: TextStyle(
                                              color: Colors.red[500],
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12),
                                          minFontSize: 12,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Icon(
                                          FontAwesomeIcons.heart,
                                          size: 20,
                                          color: Colors.black54,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    AutoSizeText(
                                      'Men Solid Knitted Round Neck ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 15.5,
                                          color: Colors.black54),
                                      minFontSize: 15,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    // decoration: TextDecoration.lineThrough,
                                    Row(
                                      children: [
                                        Text(
                                          '\u{20B9} 399',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(' \u{20B9} 699',
                                            style: TextStyle(
                                                fontSize: 14,
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                color: Colors.red)),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.49,
                          height: 354.8,
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.49,
                                height: 235.73,
                                child: Image.network(
                                  '${list[6]}',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 7.5, right: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        AutoSizeText(
                                          '${tag[6]}',
                                          style: TextStyle(
                                              color: Colors.red[500],
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12),
                                          minFontSize: 12,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Icon(
                                          FontAwesomeIcons.heart,
                                          size: 20,
                                          color: Colors.black54,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    AutoSizeText(
                                      'Men Solid Knitted Round Neck ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 15.5,
                                          color: Colors.black54),
                                      minFontSize: 15,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    // decoration: TextDecoration.lineThrough,
                                    Row(
                                      children: [
                                        Text(
                                          '\u{20B9} 399',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(' \u{20B9} 699',
                                            style: TextStyle(
                                                fontSize: 14,
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                color: Colors.red)),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.49,
                          height: 354.8,
                          // color: Colors.white,
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.49,
                                height: 235.73,
                                child: Image.network(
                                  '${list[7]}',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 7.5, right: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        AutoSizeText(
                                          '${tag[7]}',
                                          style: TextStyle(
                                              color: Colors.red[500],
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12),
                                          minFontSize: 12,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Icon(
                                          FontAwesomeIcons.heart,
                                          size: 20,
                                          color: Colors.black54,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    AutoSizeText(
                                      'Men Solid Knitted Round Neck ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 15.5,
                                          color: Colors.black54),
                                      minFontSize: 15,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    // decoration: TextDecoration.lineThrough,
                                    Row(
                                      children: [
                                        Text(
                                          '\u{20B9} 399',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(' \u{20B9} 699',
                                            style: TextStyle(
                                                fontSize: 14,
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                color: Colors.red)),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
