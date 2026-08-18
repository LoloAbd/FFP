// ignore_for_file: avoid_print
import 'package:google_fonts/google_fonts.dart';
import 'data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 75, 15, 11),
          title: Text(
            'My Store',
            style: GoogleFonts.alike(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 30,
                overflow: TextOverflow.visible,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: null,
              icon: Icon(Icons.search, size: 30, color: Colors.white),
            ),

            IconButton(
              onPressed: null,
              icon: Icon(Icons.shopping_cart, size: 30, color: Colors.white),
            ),
          ],
        ),

        body: Column(
          children: [
            Container(
              height: 60,
              color: Colors.white,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(15),
                    child: GestureDetector(
                      onTap: () {
                        print(categories[index]);
                      },
                      child: Text(
                        categories[index],
                        style: GoogleFonts.alike(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            overflow: TextOverflow.visible,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              //color: Colors.grey,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        if (products[index]['isNew'])
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 93, 2, 2),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text(
                                'New',
                                style: GoogleFonts.alike(
                                  textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    overflow: TextOverflow.visible,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),

                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () => print(
                            '${products[index]['name']} \n ${products[index]['price']} \n ${products[index]['isNew']} \n ${products[index]['category']} \n',
                          ),
                          child: Image.network(
                            products[index]['pic'],
                            height: 120,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          products[index]['name'],
                          style: GoogleFonts.alike(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              overflow: TextOverflow.visible,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '${products[index]['price']} \$',
                          style: GoogleFonts.alike(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              overflow: TextOverflow.visible,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
