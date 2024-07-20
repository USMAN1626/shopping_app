import 'package:flutter/material.dart';
import 'package:m/models/products.dart';
import 'package:m/models/cart.dart';
import 'package:provider/provider.dart';
import 'cart_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Product> products = [
    Product(name: 'Rice 🍚 /kg', price: 200.0),
    Product(name: 'Mango Juice 🥭 /litre', price: 180.0),
    Product(name: 'Ghee 🧈 /kg', price: 470.0),
    Product(name: 'Potato 🥔 /kg', price: 45.0),
    Product(name: 'Tomato 🍅 /kg', price: 55.0),
    Product(name: 'Onion 🧅 /kg', price: 35.0),
    Product(name: 'Carrot 🥕 /kg', price: 65.0),
    Product(name: 'Spinach 🌿 /kg', price: 33.0),
    Product(name: 'Cabbage 🥬 /kg', price: 43.0),
    Product(name: 'Cauliflower 🥦 /kg', price: 55.0),
    Product(name: 'Peas 🫛 /kg', price: 75.0),
    Product(name: 'Garlic 🧄 /kg', price: 210.0),
    Product(name: 'Ginger 🌱 /kg', price: 310.0),
    Product(name: 'Banana 🍌 /dozen', price: 90.0),
    Product(name: 'Apple 🍎 /kg', price: 225.0),
    Product(name: 'Mango 🥭 /kg', price: 165.0),
    Product(name: 'Orange 🍊 /dozen', price: 135.0),
    Product(name: 'Pineapple 🍍 /piece', price: 160.0),
    Product(name: 'Papaya 🍈 /kg', price: 95.0),
    Product(name: 'Guava 🍐 /kg', price: 75.0),
    Product(name: 'Grapes 🍇 /kg', price: 275.0),
    Product(name: 'Pomegranate 🍎 /kg', price: 210.0),
    Product(name: 'Watermelon 🍉 /kg', price: 35.0),
    Product(name: 'Chicken (Broiler) 🍗 /kg', price: 290.0),
    Product(name: 'Beef 🥩 /kg', price: 750.0),
    Product(name: 'Mutton 🍖 /kg', price: 1250.0),
    Product(name: 'Eggs 🥚 /dozen', price: 155.0),
    Product(name: 'Milk 🥛 /litre', price: 155.0),
    Product(name: 'Yogurt 🍦 /kg', price: 165.0),
    Product(name: 'Butter 🧈 /kg', price: 725.0),
    Product(name: 'Cheese 🧀 /kg', price: 825.0),
    Product(name: 'Wheat Flour (Atta) 🌾 /kg', price: 72.0),
    Product(name: 'Rice (Basmati) 🍚 /kg', price: 210.0),
    Product(name: 'Lentils (Daal) 🫘 /kg', price: 190.0),
    Product(name: 'Chickpeas 🧆 /kg', price: 155.0),
    Product(name: 'Red Beans 🫘 /kg', price: 230.0),
    Product(name: 'Black Gram 🌰 /kg', price: 190.0),
    Product(name: 'Green Gram 🌰 /kg', price: 170.0),
    Product(name: 'Maize Flour 🌽 /kg', price: 55.0),
    Product(name: 'Sugar 🥄 /kg', price: 95.0),
    Product(name: 'Cooking Oil 🛢️ /litre', price: 475.0),
    Product(name: 'Salt 🧂 /kg', price: 22.0),
    Product(name: 'Tea 🍵 /kg', price: 1050.0),
    Product(name: 'Spices (Mixed) 🌶️ /kg', price: 525.0),
    Product(name: 'Sugar 🍚 /kg', price: 110.0),
    Product(name: 'Milk 🥛 /litre', price: 150.0),
    Product(name: 'Chicken 🍗 /kg', price: 350.0),
    Product(name: 'Rice 🍚 /kg', price: 180.0),
    Product(name: 'Cooking Oil 🛢️ /litre', price: 470.0),
    Product(name: 'Flour 🌾 /kg', price: 900.0),
    Product(name: 'Eggs 🥚 /dozen', price: 180.0),
    Product(name: 'Salt 🧂 /kg', price: 20.0),
    Product(name: 'Tea 🍵 /kg', price: 1000.0),
    Product(name: 'Spices 🌶️ /kg', price: 500.0),
    Product(name: 'Apple 🍏 /kg', price: 220.0),
    Product(name: 'Orange 🍊 /dozen', price: 140.0),
    Product(name: 'Mango 🥭 /kg', price: 170.0),
    Product(name: 'Banana 🍌 /dozen', price: 100.0),
    Product(name: 'Grapes 🍇 /kg', price: 300.0),
    Product(name: 'Pineapple 🍍 /piece', price: 150.0),
    Product(name: 'Guava 🍐 /kg', price: 80.0),
    Product(name: 'Papaya 🍈 /kg', price: 100.0),
    Product(name: 'Watermelon 🍉 /kg', price: 40.0),
    Product(name: 'Pomegranate 🍎 /kg', price: 220.0),
    Product(name: 'Carrot 🥕 /kg', price: 60.0),
    Product(name: 'Spinach 🌿 /kg', price: 30.0),
    Product(name: 'Cabbage 🥬 /kg', price: 40.0),
    Product(name: 'Cauliflower 🥦 /kg', price: 50.0),
    Product(name: 'Peas 🫛 /kg', price: 70.0),
    Product(name: 'Garlic 🧄 /kg', price: 200.0),
    Product(name: 'Ginger 🌱 /kg', price: 300.0),
    Product(name: 'Potato 🥔 /kg', price: 40.0),
    Product(name: 'Tomato 🍅 /kg', price: 50.0),
    Product(name: 'Onion 🧅 /kg', price: 30.0),
    Product(name: 'Chickpeas 🧆 /kg', price: 150.0),
    Product(name: 'Red Beans 🫘 /kg', price: 220.0),
    Product(name: 'Black Gram 🌰 /kg', price: 180.0),
    Product(name: 'Green Gram 🌰 /kg', price: 160.0),
    Product(name: 'Maize Flour 🌽 /kg', price: 50.0),
    Product(name: 'Lentils (Daal) 🫘 /kg', price: 180.0),
    Product(name: 'Wheat Flour (Atta) 🌾 /kg', price: 70.0),
    Product(name: 'Rice (Basmati) 🍚 /kg', price: 200.0),
    Product(name: 'Cooking Oil 🛢️ /litre', price: 400.0),
    Product(name: 'Butter 🧈', price: 700.0),
    Product(name: 'Cheese 🧀', price: 800.0),
    Product(name: 'Yogurt 🍦', price: 160.0),
    Product(name: 'Milk 🥛 /litre', price: 150.0),
    Product(name: 'Beef 🥩 /kg', price: 700.0),
    Product(name: 'Mutton 🍖 /kg', price: 1200.0),
    Product(name: 'Chicken 🍗 /kg', price: 280.0),
    Product(name: 'Eggs 🥚 /dozen', price: 150.0),
    Product(name: 'Sugar 🥄 /kg', price: 90.0),
    Product(name: 'Salt 🧂 /kg', price: 20.0),
    Product(name: 'Tea 🍵 /kg', price: 1000.0),
    Product(name: 'Spices (Mixed) 🌶️ /kg', price: 500.0),
  ];

  List<Product> filteredProducts = [];
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredProducts = products;
    _searchController.addListener(() {
      _filterProducts();
    });
  }

  void _filterProducts() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      filteredProducts = products.where((product) {
        return product.name.toLowerCase().contains(query);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('-- Items  --'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                suffixIcon: Icon(Icons.search),
              ),
              onChanged: (value) => _filterProducts(),
            ),
          ),
        ),
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
        child: ListView.builder(
          itemCount: filteredProducts.length,
          itemBuilder: (context, index) {
            final product = filteredProducts[index];
            return ListTile(
              title: Text(product.name),
              subtitle: Text('${product.price} Rs'),
              trailing: ElevatedButton(
                onPressed: () {
                  Provider.of<Cart>(context, listen: false).add(product);
                },
                child: Text('Add to Cart'),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => CartScreen(),
            ),
          );
        },
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}
