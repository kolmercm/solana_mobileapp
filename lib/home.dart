import 'dart:html';

import 'package:flutter/material.dart';
import 'package:solana_mobileapp/constants.dart';
import 'image_banner.dart';

class HomeScreen extends StatelessWidget {
  final String title;

  HomeScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: BackgroundColor,
      ),
      body: Column(
        children: [
          ImageBanner("assets/banner.jpg"),
          Text(
            "Interchain NFT Marketplace to Buy and Sell Next Generational Tokens",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          Text(
            "Popular NFT's",
            textAlign: TextAlign.end,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            ListTile(
              title: Text('NFT Marketplace'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Gallery'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Learn Tutorials'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('FAQs'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.teal.shade100)),
              onPressed: () {},
              child: const Text('Create Your Wallet'),
            ),
          ],
        ),
      ),
    );
  }
}
