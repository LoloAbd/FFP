import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.fromLTRB(20, 120, 20, 20),
         // margin: const EdgeInsets.only(top: 40),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 239, 205, 247),
            borderRadius: BorderRadius.circular(25),
            border: Border.all(
              color: const Color.fromARGB(255, 60, 0, 69),
              width: 2,
            ),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 60, 0, 69),
                blurRadius: 4,
                offset: Offset(2, 2),
              ),
            ],
          ),
          child: const Align(
            alignment: Alignment.topLeft,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage(
                    'https://i.pinimg.com/736x/19/50/4c/19504c963c26157dda71717c922470e3.jpg',
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Alaa Abdalqader',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Computer Engineer',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, top: 10.0),
                      child: Icon(
                        Icons.computer,
                        size: 25,
                        color: Color.fromARGB(255, 60, 0, 69),
                      ),
                    ),
                    SizedBox(width: 4),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, top: 10.0),
                      child: Icon(
                        Icons.adb,
                        size: 25,
                        color: Color.fromARGB(255, 60, 0, 69),
                      ),
                    ),
                    SizedBox(width: 4),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, top: 10.0),
                      child: Icon(
                        Icons.shield,
                        size: 25,
                        color: Color.fromARGB(255, 60, 0, 69),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
