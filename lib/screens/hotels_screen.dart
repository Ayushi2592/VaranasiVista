import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HotelsScreen extends StatefulWidget {
  static const String id = 'hotels_screen';
  @override
  State<HotelsScreen> createState() => _HotelsScreenState();
}

class _HotelsScreenState extends State<HotelsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class HotelScreen extends StatelessWidget {
  const HotelScreen({Key? key}) : super(key: key);

  static const routeName = '/hotels';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: Icon(
            Icons.location_on,
            color: Colors.grey[700],
          ),
        ),
        title: Text(
          'Sydney, Australia',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[700],
          ),
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                Icons.person,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CartPage(); // Navigate to CartPage when FloatingActionButton is pressed
            },
          ),
        ),
        child: const Icon(Icons.shopping_bag),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 48),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text('Good morning,'),
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              "Let's order fresh items for you",
              style: GoogleFonts.notoSerif(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Divider(),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              "Fresh Items",
              style: GoogleFonts.notoSerif(
                fontSize: 18,
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(12),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: Provider.of<CartModel>(context).shopItems.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1 / 1.2,
              ),
              itemBuilder: (context, index) {
                var cartModel = Provider.of<CartModel>(context, listen: false);
                var item = cartModel.shopItems[index];
                return GroceryItemTile(
                  itemName: item[0],
                  itemPrice: item[1],
                  imagePath: item[2],
                  color: item[3],
                  onPressed: () => cartModel.addItemToCart(index),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class GroceryItemTile extends StatelessWidget {
  final String itemName;
  final double itemPrice;
  final String imagePath;
  final Color color;
  final VoidCallback onPressed;

  const GroceryItemTile({
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        color: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath, height: 80, width: 80),
            SizedBox(height: 8),
            Text(itemName),
            Text('\$${itemPrice.toStringAsFixed(2)}'),
          ],
        ),
      ),
    );
  }
}

class CartModel extends ChangeNotifier {
  List<List<dynamic>> shopItems = []; // Define your shop items data structure

  void addItemToCart(int index) {
    // Implement adding items to the cart logic here
    // You can modify the shopItems list based on the selected index
    notifyListeners();
  }
}

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Implement your CartPage UI here
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
      ),
      body: Center(
        child: Text('Cart items will be displayed here.'),
      ),
    );
  }
}

