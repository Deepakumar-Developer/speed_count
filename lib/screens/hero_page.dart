import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Home_page.dart';

class Hero_page extends StatefulWidget {
  const Hero_page({super.key});

  @override
  State<Hero_page> createState() => _Hero_pageState();
}

class _Hero_pageState extends State<Hero_page> {
  final Uri toLaunch =
      Uri(scheme: 'https', host: 'bitwisesample.netlify.app', path: '');
  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade50,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.indigo, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(flex: 4, child: Container()),
              const Text(
                'Tap IT',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Color(0xFF3949AB),
                  fontSize: 45.0,
                  shadows: [
                    Shadow(
                        color: Colors.black12,
                        offset: Offset(10, 10),
                        blurRadius: 25.0),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 4.9, bottom: 40),
                child: const Text(
                  'Test your SPEED',
                  style: TextStyle(
                      fontSize: 15,
                      letterSpacing: 10,
                      color: Color(0xFF3949AB)),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Home_page()),
                  );
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo),
                child: const Text(
                  'Start',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Power By:',
                    style: TextStyle(color: Colors.indigo, fontSize: 10.0),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  _launchUrl(toLaunch);
                },
                child: const Text(
                  'ByteWise Creator',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
