
import 'package:flutter/material.dart';
import 'Dailing Pad/Dailing_pad.dart';
import 'FacebookPost/fbhome.dart';


class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 0, 0, 0),
            Color.fromARGB(255, 47, 55, 61),
            Color.fromARGB(255, 56, 77, 77),
            Color.fromARGB(255, 62, 54, 70),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomRight,
        )),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 290, 0, 50),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Samatar Khadar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 90),
                  child: Text(
                    'Assignment 1',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Dailing(),)
                    );
                  },
                  child: const Text(
                    'Facebook Post Shimmer	',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 90),
                  child: Text(
                    'Assignment 2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage(),)
                        // MaterialPageRoute(builder: (context) => HomePage(),)
                    );
                  },
                  child: const Text(
                    'android number dailing pad',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Expanded(
                  child: Container(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
