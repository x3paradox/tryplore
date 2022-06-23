import 'package:flutter/material.dart';

class OffersTab extends StatefulWidget {
  const OffersTab({Key? key}) : super(key: key);

  @override
  State<OffersTab> createState() => _OffersTabState();
}

class _OffersTabState extends State<OffersTab> {
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
        title: Text('Offers Zone'),
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
                'https://c8.alamy.com/comp/PR0M2H/black-friday-promotional-sale-shopping-banner-with-products-and-discount-fashion-clothing-and-accessories-PR0M2H.jpg'),
            SizedBox(
              height: 10,
            ),
            Image.network(
                'https://thumbs.dreamstime.com/z/woman-addicted-sales-clothes-black-shopping-concept-finance-female-model-wearing-too-much-colorful-fashion-style-friday-166942268.jpg'),
            SizedBox(
              height: 10,
            ),
            Image.network(
                'https://assets.indiadesire.com/images/amazon%20kids%20clothing%20offers.jpg'),
            SizedBox(
              height: 10,
            ),
            Image.network(
                'https://c8.alamy.com/comp/PR0M2H/black-friday-promotional-sale-shopping-banner-with-products-and-discount-fashion-clothing-and-accessories-PR0M2H.jpg'),
            SizedBox(
              height: 10,
            ),
            Image.network(
                'https://thumbs.dreamstime.com/z/woman-addicted-sales-clothes-black-shopping-concept-finance-female-model-wearing-too-much-colorful-fashion-style-friday-166942268.jpg'),
            SizedBox(
              height: 10,
            ),
            Image.network(
                'https://assets.indiadesire.com/images/amazon%20kids%20clothing%20offers.jpg')
          ],
        ),
      )),
    );
  }
}
