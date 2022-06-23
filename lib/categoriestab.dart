import 'package:flutter/material.dart';

class CategoriesTab extends StatefulWidget {
  const CategoriesTab({Key? key}) : super(key: key);

  @override
  State<CategoriesTab> createState() => _CategoriesTabState();
}

class _CategoriesTabState extends State<CategoriesTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Profile',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.card_travel),
              title: Text('My Orders'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.wifi_sharp),
              title: Text('Wish list'),
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text('FAQ'),
            ),
            ListTile(
              leading: Icon(Icons.contact_phone_outlined),
              title: Text('Contact us'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Categories'),
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
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
                'https://couponswala.com/blog/wp-content/uploads/2022/06/hm-men-clothing-min-1-696x392.png'),
            SizedBox(
              height: 10,
            ),
            Image.network(
                'https://www.save72.com/assets/uploads/H-M-Online-Womens-Clothing-Deals-Save72.jpg'),
            SizedBox(
              height: 10,
            ),
            Image.network(
                'https://i.ytimg.com/vi/BmO7hizUjYw/maxresdefault.jpg'),
            SizedBox(
              height: 10,
            ),
            Image.network(
                'https://couponswala.com/blog/wp-content/uploads/2022/06/hm-men-clothing-min-1-696x392.png'),
            SizedBox(
              height: 10,
            ),
            Image.network(
                'https://www.save72.com/assets/uploads/H-M-Online-Womens-Clothing-Deals-Save72.jpg'),
            SizedBox(
              height: 10,
            ),
            Image.network(
                'https://i.ytimg.com/vi/BmO7hizUjYw/maxresdefault.jpg'),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      )),
    );
  }
}
