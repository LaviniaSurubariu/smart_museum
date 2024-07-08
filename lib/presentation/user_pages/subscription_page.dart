import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/extensions.dart';

class SubscriptionPage extends StatefulWidget {
  const SubscriptionPage({super.key});

  @override
  State<SubscriptionPage> createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends State<SubscriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            switch (context.store.state.routeSubscriptionIndex) {
              case 0:
                Navigator.pushReplacementNamed(context, '/profilePage');

              case 1:
                Navigator.pushReplacementNamed(context, '/infoSubscriptionPage');

              default:
                Navigator.pushReplacementNamed(context, '/profilePage');
            }
          },
        ),
        title: const Text(''),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Text(
                    'Experience the World of Art Like Never Before with a Premium Account',
                    style: TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold, fontFamily: GoogleFonts.breeSerif().fontFamily),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 16),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Divider(
                    height: 1,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'With a Premium account, you can enjoy a full audio experience for artworks. Transform your museum visit to a captivating and relaxing experience with a Premium account.',
                  style: TextStyle(
                    color: Color.fromRGBO(124, 163, 161, 1),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                const ListTile(
                  leading: Icon(Icons.check_circle, color: Color.fromRGBO(112, 197, 225, 1)),
                  title: Text('Full Audio Experience: Enjoy detailed audio guides for each artwork.',
                      style: TextStyle(fontSize: 14)),
                ),
                const ListTile(
                  leading: Icon(Icons.check_circle, color: Color.fromRGBO(112, 197, 225, 1)),
                  title: Text('Learn at Your Leisure: No need to read, just listen and admire the art.',
                      style: TextStyle(fontSize: 14)),
                ),
                const ListTile(
                  leading: Icon(Icons.check_circle, color: Color.fromRGBO(112, 197, 225, 1)),
                  title: Text('Exclusive Content: Access to stories and secrets behind your favourite artworks.',
                      style: TextStyle(fontSize: 14)),
                ),
                const ListTile(
                  leading: Icon(Icons.check_circle, color: Color.fromRGBO(112, 197, 225, 1)),
                  title: Text('Continue Learning: Keep listening to the audio guides even after leaving the museum.',
                      style: TextStyle(fontSize: 14)),
                ),
                const SizedBox(height: 8),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 10.0),
                  child: Divider(
                    height: 1,
                    color: Colors.grey,
                  ),
                ),
                const Center(
                  child: Text(
                    'Buy Now',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        child: Material(
                          color: Colors.transparent,
                          shadowColor: Colors.white,
                          child: Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(26.0)),
                              color: Color.fromRGBO(161, 217, 235, 1),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Center(
                                      child: Text(
                                        '1 day',
                                        style:
                                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Center(
                                      child: Text(
                                        r'$ 2.49',
                                        style: TextStyle(fontSize: 16, color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.pushReplacementNamed(
                            context,
                            '/paymentPage',
                            arguments: <String, dynamic>{
                              'duration': '1 day',
                              'price': 2.49,
                            },
                          );
                        },
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: GestureDetector(
                        child: Material(
                          color: Colors.transparent,
                          shadowColor: Colors.white,
                          child: Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(26.0)),
                              gradient: LinearGradient(
                                colors: <Color>[
                                  Color.fromRGBO(112, 197, 225, 1),
                                  Color.fromRGBO(112, 225, 197, 1),
                                ],
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Center(
                                      child: Text(
                                        '1 month',
                                        style:
                                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Center(
                                      child: Text(
                                        r'$ 4.99',
                                        style: TextStyle(fontSize: 16, color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.pushReplacementNamed(
                            context,
                            '/paymentPage',
                            arguments: <String, dynamic>{
                              'duration': '1 month',
                              'price': 4.99,
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
