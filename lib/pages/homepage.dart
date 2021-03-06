import 'package:flutter/material.dart';
import 'package:kushtia_bazar/models/product_model.dart';
import 'package:kushtia_bazar/widgets/product_carusol.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.pink,
          ),
          onPressed: () {
            debugPrint('Menu button pressed');
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  icon: const Icon(
                    Icons.shopping_cart,
                    size: 30,
                    color: Colors.red,
                  ),
                  onPressed: () {},
                ),
              ),
              Positioned(
                top: 2,
                right: 0,
                child: Container(
                  width: 30,
                  height: 20,
                  child: const Center(child: Text('10')),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
        title: const Text(
          'Khustia Bazar',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              const Image(
                image: AssetImage("assets/images/samsung_gear_vr.jpg"),
                width: double.infinity,
              ),
              Positioned(
                left: 20,
                bottom: 30,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'POPULAR',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                    const SizedBox(height: 10.0),
                    const Text(
                      'The future of',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Text(
                      'virtual reality',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    Container(
                      color: Colors.white,
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Image(
                              image: AssetImage("assets/images/gear_vr.jpg"),
                              height: 50,
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Text(
                                'Samsung GEAR VR ',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'FOR GAMERS',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const Expanded(
                            child: Icon(
                              Icons.arrow_forward,
                              size: 30,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          ProductCarosul(title: "Feature", products: products),
          const SizedBox(
            height: 10.0,
          ),
          ProductCarosul(
            title: "New",
            products: products.sublist(1, 4),
          ),
          const SizedBox(
            height: 20.0,
          ),

          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'All Products',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),

          // make a product grid with Gridview
          GridView.count(
            primary: false,
            shrinkWrap: true,
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: List.generate(
              products.length,
              (index) => Material(
                elevation: 4,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Image.asset(products[index].imageUrl),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text(
                              products[index].name,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              products[index].price.toStringAsFixed(2),
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  color: Colors.deepOrange,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                child: const Text('Add to Cart'))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


// Text(
//                   ''' Samsung vr BOX
//   20% DISCOUNT
                 
//                  ''',
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 )