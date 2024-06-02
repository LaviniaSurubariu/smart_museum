import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';


class ArtWorkDetailsPage extends StatefulWidget {
  const ArtWorkDetailsPage({super.key});

  @override
  State<ArtWorkDetailsPage> createState() => _ArtWorkDetailsPage();
}

class _ArtWorkDetailsPage extends State<ArtWorkDetailsPage> {
  bool isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/profilePage');
          },
        ),
        title: const Text(
          'The birth of Venus',
          style: TextStyle(fontSize: 16),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Image.network(
            'https://firebasestorage.googleapis.com/v0/b/smartmuseum-b4776.appspot.com/o/users%2FNAyQyoh9bDh2JTTJOCKW702Io8L2%2Fprofile.png?alt=media&token=c97ae17b-b938-4f33-98f9-23715af4afb6',
            height: 250,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'The birth of Venus',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Sandro Botticelli  1483 - 1485',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        isFavorited ? LineAwesomeIcons.heart_1 : LineAwesomeIcons.heart,
                        size: 36,
                      ),
                      onPressed: () {
                        setState(() {
                          isFavorited = !isFavorited;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.bodyMedium,
                    children: const <TextSpan>[
                      TextSpan(text: 'Type: ', style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'Painting\n'),
                      TextSpan(text: 'Style: ', style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'Renaissance\n'),
                      TextSpan(text: 'Creator: ', style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'Sandro Botticelli\n'),
                      TextSpan(text: 'Date of creation: ', style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: '1483 - 1485\n'),
                      TextSpan(text: 'Provenance: ', style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: "Collections of the Lorenzo di Pierfrancesco de' Medici family\n"),
                      TextSpan(text: 'Original title: ', style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'La nastere di Venere\n'),
                      TextSpan(text: 'Description: ', style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              "The painting was commissioned by Lorenzo di Pierfrancesco de'Medici, a cousin of Lorenzo the Magnificent. The theme was probably suggested by the humanist Poliziano.\n"),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'MORE ABOUT CREATOR',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
