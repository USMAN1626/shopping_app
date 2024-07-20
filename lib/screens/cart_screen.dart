import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/models/cart.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Container(
  decoration: BoxDecoration(
      gradient: LinearGradient(
      colors: [
        Color(0xFFfdfcfb), // Start color
        Color(0xFFe2d1c3), // End color
      ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    ),
    ),
        child: Consumer<Cart>(
          builder: (context, cart, child) {
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: cart.items.length,
                    itemBuilder: (context, index) {
                      final product = cart.items[index];
                      return ListTile(
                        title: Text(product.name),
                        subtitle: Text('${product.price} Rs'),
                        trailing: IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            cart.remove(product);
                          },
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 80,
                  child: Text(
                    'Total: ${cart.totalPrice} Rupees ',
                    style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.red),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
