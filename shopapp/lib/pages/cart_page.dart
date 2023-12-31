import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/components/my_button.dart';
import 'package:shopapp/models/Shop.dart';
import 'package:shopapp/models/product.dart';

class cartpage extends StatelessWidget {
  const cartpage({super.key});
  void removeitemfromcart(BuildContext context, Products products) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: Text("remove this item from your cart ?"),
              actions: [
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("no"),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                    context.read<Shop>().removefromcart(products);
                  },
                  child: Text("yes"),
                ),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<Shop>().cart;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Cart"),
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: cart.length,
                  itemBuilder: (context, index) {
                    final item = cart[index];
                    return ListTile(
                      title: Text(item.name),
                      subtitle: Text(item.price.toStringAsFixed(2)),
                      trailing: IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () => removeitemfromcart(context, item),
                      ),
                    );
                  })),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: MyButton(onTap: () {}, child: Text("Pay Now")),
          )
        ],
      ),
    );
  }
}
