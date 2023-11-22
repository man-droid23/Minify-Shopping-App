import 'package:flutter/material.dart';
import 'package:mini_shopping_app/widgets/catalogue_tile.dart';
import 'package:mini_shopping_app/data/catalogue_data.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 227, 213),
      body: Column(
        children: [
          // new arrivals
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 25.0),
                child: Text(
                  "New Arrivals  💕",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 25.0),
                child: Text(
                  "See All",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          // list view of products horizontally
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(right: 25.0),
              scrollDirection: Axis.horizontal,
              itemCount: catalogue.length,
              itemBuilder: (context, index) {
                return CatalogueTile(
                  catalogue: catalogue[index],
                  onAddToCart: () {
                    setState(() {
                      addToCart(catalogue[index]);
                      // add notification
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Added to cart"),
                          duration: Duration(milliseconds: 500),
                          backgroundColor: Color.fromARGB(255, 200, 187, 164),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                            ),
                          ),
                        ),
                      );
                    });
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
