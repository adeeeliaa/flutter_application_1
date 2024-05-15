import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart.dart';
import 'package:flutter_application_1/productdesc.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'Poppins',
    ),
    home: Categories(),
  ));
}

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5EFE6),
      appBar: AppBar(
        backgroundColor: Color(0xFFF5EFE6),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Cart()),
                );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  'Beras',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Divider(
                  color: Color(0xFFECE1DA),
                  thickness: 5,
                ),
                SizedBox(
                  height: 5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProductDesc()),
                      );
                  },
                  child: Card(
                    elevation: 3,
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    color: Color(0xFF1A4D2E),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'Images/ciherang.jpg',
                              width: 80,
                              height: 80,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Beras Ciherang',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.white
                              ),
                            ),
                            Text(
                              'Rp. 73.000/2Kg', // Add your text here
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: List.generate(5, (index) =>
                                Icon(Icons.star, color: Colors.yellow),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {

                  },
                  child: Card(
                    elevation: 3,
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    color: Color(0xFF1A4D2E),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'Images/mentikwangi.jpeg',
                              width: 80,
                              height: 80,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Beras Mentik Wangi',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.white
                              ),
                            ),
                            Text(
                              'Rp. 153.000/5Kg', // Add your text here
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: List.generate(5, (index) =>
                                Icon(Icons.star, color: Colors.yellow),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {

                  },
                  child: Card(
                    elevation: 3,
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    color: Color(0xFF1A4D2E),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'Images/ir64.jpeg',
                              width: 80,
                              height: 80,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Beras IR 64',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.white
                              ),
                            ),
                            Text(
                              'Rp. 14.900/Kg', // Add your text here
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: List.generate(5, (index) =>
                                Icon(Icons.star, color: Colors.yellow),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
