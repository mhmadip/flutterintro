import 'package:flutter/material.dart';
// Learn Flutter with OOP as last lab session for OOP course in IT Dept of TIU
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: ProductListPage(),
    );
  }
}

class Product {
  final String name;
  final double price;

  Product(this.name, this.price);
}

class ProductListPage extends StatelessWidget {
  final List<Product> products = [
    Product('Product 1', 9.99),
    Product('Product 2', 14.99),
    Product('Product 3', 19.99),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(products[index].name),
            subtitle: Text('\$${products[index].price}'),
            trailing: IconButton(
              icon: Icon(Icons.add_shopping_cart),
              onPressed: () {
                // Add to cart functionality
                // Implement your desired logic here
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Button Pressed'),
                      content: Text('You pressed the button!'),
                      actions: <Widget>[
                        TextButton(
                          child: Text('OK'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}
