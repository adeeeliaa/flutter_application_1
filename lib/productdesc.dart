import 'package:flutter/material.dart';
import 'cart.dart';  // Use a relative import if the Cart screen is in the same directory

class ProductDesc extends StatelessWidget {
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
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'Images/ciherang.jpg',
                  width: 250,
                  height: 250,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Beras Ciherang',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Rp. 73.000/2Kg',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Row(
                children: List.generate(5, (index) => Icon(Icons.star, color: Colors.yellow,size: 20,)),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Deskripsi Produk',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Beras Ciherang adalah pilihan premium bagi pecinta kuliner yang mengutamakan kualitas dan cita rasa. Ditanam dengan cermat, beras ini menawarkan kualitas terbaik yang hanya bisa ditemukan dari alam yang subur dan iklim yang ideal.',
                style: TextStyle(fontSize: 14),
              ),
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.0),
        child: SizedBox(
          width: double.infinity,
          height: 48,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF1A4D2E),
            ),
            child: Text(
              'Tambahkan ke Keranjang',
              style: TextStyle(color: Color(0xFFF5EFE6)),
            ),
            onPressed: () {
              final snackBar = SnackBar(
                content: const Text('Produk ditambahkan ke keranjang'),
                duration: Duration(seconds: 2),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
        ),
      ),
    );
  }
}
