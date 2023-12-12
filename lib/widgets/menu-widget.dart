import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  final List<MenuProduct> products;

  const MenuWidget({
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0, // Define la altura del Container
      child: Column(
        children: [
          ListView(
            children: products
                .map((product) => MenuProductItem(product: product))
                .toList(),
          ),
        ],
      ),
    );
  }
}

class MenuProductItem extends StatelessWidget {
  final MenuProduct product;

  const MenuProductItem({
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(product.imageUrl),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(product.name),
              Text(product.description),
            ],
          ),
          ElevatedButton(
            child: Text(product.buttonText),
            onPressed: () {
              // Realizar la acción correspondiente al botón
            },
          ),
        ],
      ),
    );
  }
}

class MenuProduct {
  final String name;
  final String description;
  final String imageUrl;
  final String buttonText;

  const MenuProduct({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.buttonText,
  });
}
