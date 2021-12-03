import 'package:flutter/material.dart';

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
          const SizedBox(
            height: 20.0,
          ),
          Stack(
            children: [
              const Image(
                image: AssetImage("assets/images/samsung_gear_vr.jpg"),
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                left: 20,
                top: 20,
                child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "SAMSUNG VR BOX \n",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 80,
                bottom: 50,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "20 % Discount \n",
                        style: TextStyle(
                            fontSize: 20,
                            backgroundColor: Colors.red.withAlpha(255),
                            fontWeight: FontWeight.bold,
                            color: Colors.amber),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 80,
                bottom: 20,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  onPressed: () {},
                  child: const Text(
                    'Buy Now',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
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