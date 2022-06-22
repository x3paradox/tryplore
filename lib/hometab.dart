import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:tryplore/categoriestab.dart';
import 'package:tryplore/my_home_page.dart';
import 'package:tryplore/offerstab.dart';
import 'package:tryplore/profiletab.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  List<Widget> page = [
    MyHomePage(),
    CategoriesTab(),
    OffersTab(),
    ProfileTab()
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            // if (_currentIndex == 2 || _currentIndex == 3) {
            //   print('I am here');
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //         builder: (context) => push[_currentIndex - 2]),
            //   );
            // }
          });
        },
        iconSize: 30.0,
        selectedColor: Color(0xff040307),
        strokeColor: Color(0x30040307),
        unSelectedColor: Color(0xffacacac),
        backgroundColor: Colors.white,
        items: [
          CustomNavigationBarItem(
            // selectedIcon: HomeTab(),
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          CustomNavigationBarItem(
            // selectedIcon: CategoriesTab(),
            icon: Icon(Icons.category),
            title: Text("Categories"),
          ),
          CustomNavigationBarItem(
            // selectedIcon: OffersTab(),
            icon: Icon(Icons.lightbulb_outline),
            title: Text("Offers"),
          ),
          CustomNavigationBarItem(
            // selectedIcon: ProfileTab(),
            icon: Icon(Icons.account_circle),
            title: Text("Profile"),
          ),
        ],

        // isFloating: true,
      ),
      body: page[_currentIndex],
    );
  }
}
