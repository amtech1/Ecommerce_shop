import 'package:flutter/material.dart';
import 'package:shopapp/components/my_listtile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                child: Center(
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    size: 72,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                decoration: BoxDecoration(color: Colors.transparent),
              ),
              const SizedBox(
                height: 25,
              ),
              mylisttile(
                text: 'SHOP',
                icon: Icons.home,
                onTap: () => Navigator.pop(context),
              ),
              mylisttile(
                text: 'CART',
                icon: Icons.shopping_cart,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, "/Cart");
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: mylisttile(
              text: 'EXIT',
              icon: Icons.logout,
              onTap: () => Navigator.pushNamed(context, "/intropage"),
            ),
          ),
        ],
      ),
    );
  }
}
