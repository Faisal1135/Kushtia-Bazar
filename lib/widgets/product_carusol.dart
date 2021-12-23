import 'package:flutter/material.dart';

import 'package:kushtia_bazar/models/product_model.dart';

class ProductCarosul extends StatelessWidget {
  final String title;
  final List<Product> products;
  const ProductCarosul({
    Key? key,
    required this.title,
    required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(title, style: Theme.of(context).textTheme.headline6),
        ),
        SizedBox(
          height: 300,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(10),
            itemCount: products.length,
            itemBuilder: (BuildContext context, int index) {
              return Material(
                elevation: 5,
                child: Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  width: 150,
                  child: Column(
                    children: [
                      Container(
                        color: Colors.white,
                        child: Image.asset(
                          products[index].imageUrl,
                          height: 100,
                          width: 150,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text(
                              products[index].name,
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            Text(
                              "\$${products[index].price}",
                              style: const TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text('Add to Cart'),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
