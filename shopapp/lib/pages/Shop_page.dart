import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/components/Product_tile.dart';
import 'package:shopapp/components/my_drawer.dart';
import 'package:shopapp/models/Shop.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Shop Page"),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () => Navigator.pushNamed(context, "/Cart"),
                icon: Icon(Icons.shopping_cart_outlined))
          ],
        ),
        drawer: const MyDrawer(),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: ListView(
          children: [
            SizedBox(
              height: 25,
            ),
            Center(
                child: Text(
              'Pick From the list of premium products',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary),
            )),
            SizedBox(
              height: 550,
              child: ListView.builder(
                  itemCount: products.length,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(15),
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return ProductTile(products: product);
                  }),
            ),
          ],
        ));
  }
}
