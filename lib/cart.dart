import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  // List to hold quantities of each item
  List<int> quantities = [1, 1]; // Assuming you have 2 items initially

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: Scaffold(
        backgroundColor: Color(0xFFF5EFE6),
        appBar: AppBar(
          backgroundColor: Color(0xFFF5EFE6),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Keranjang Anda',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                color: Color(0xFFECE1DA),
                thickness: 5,
              ),
              SizedBox(height: 5),
              Column(
                children: <Widget>[
                  _buildCartItem(0, 'Beras Ciherang', 'Images/ciherang.jpg', 'Rp. 73.000/2Kg'),
                  _buildCartItem(1, 'Beras Mentik Wangi', 'Images/mentikwangi.jpeg', 'Rp. 153.000/5Kg'),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'Total',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  // Add a placeholder or actual total amount here
                  Text(
                    'Rp. 226.000', // Placeholder for the total amount
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF1A4D2E),
                  ),
                  child: Text(
                    'Checkout',
                    style: TextStyle(color: Color(0xFFF5EFE6)),
                  ),
                  onPressed: () {
                    // Add your onPressed code here!
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCartItem(int index, String title, String imagePath, String price) {
    return Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(15),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imagePath,
              width: 80,
              height: 80,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              price,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Spacer(),
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.remove),
              onPressed: () {
                setState(() {
                  if (quantities[index] > 1) {
                    quantities[index]--;
                  }
                });
              },
            ),
            Text('${quantities[index]}'),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                setState(() {
                  quantities[index]++;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
