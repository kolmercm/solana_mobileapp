import 'dart:html';

import 'package:flutter/material.dart';
import 'package:solana_mobileapp/constants.dart';
import 'package:solana_mobileapp/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of my application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solana - Sol Trade',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: PrimaryColor,
        scaffoldBackgroundColor: BackgroundColor,
        textTheme: TextTheme(
          display1: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          button: TextStyle(
            color: PrimaryColor,
          ),
          headline: TextStyle(color: Colors.white, fontWeight: FontWeight.w100),
        ),
      ),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/logo.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Expanded(
          child: Column(
            //code to move button to buttom of screen
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Sol Surfer\n",
                      style: Theme.of(context).textTheme.display1,
                    ),
                    TextSpan(
                      text: "Buy and Sell NFT's",
                      style: Theme.of(context).textTheme.headline,
                    )
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 30),
                ],
              ),
              FittedBox(
                child: Container(
                  margin: EdgeInsets.only(bottom: 25),
                  padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: SecondaryColor),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Create a Wallet",
                        style: Theme.of(context).textTheme.button!.copyWith(
                              color: Colors.black,
                            ),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
              FittedBox(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              HomeScreen(title: "Sol Surfer")),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 25),
                    padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: SecondaryColor),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Continue",
                          style: Theme.of(context).textTheme.button!.copyWith(
                                color: Colors.black,
                              ),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
