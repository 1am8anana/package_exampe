import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:package_exampe/screen/about_us_screen.dart';
import 'package:package_exampe/screen/calculation_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> sliders = [
    "images/slider_1.jpg",
    "images/slider_2.jpg",
    "images/slider_3.jpg",
    "images/slider_4.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
              image: DecorationImage(
                image: AssetImage('images/slider_1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Text('welcome to about us!'),
          ),
          const ListTile(
            title: Text('NEWS'),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const AboutUsScreen()),
              );
            },
            title: const Text('about us'),
          ),
        ]),
      ),
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: Swiper(
          autoplay: true,
          itemCount: sliders.length,
          itemBuilder: (context, index) => Image.asset(sliders[index]),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          switch (value) {
            case 1:
              Navigator.of(context).push(MaterialPageRoute(
                builder: ((context) => const CalculationScreen()),
              ));
          }
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.white70),
          BottomNavigationBarItem(
              icon: Icon(Icons.calculate),
              label: 'Calculate',
              backgroundColor: Colors.white70),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.white70),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
              backgroundColor: Colors.white70)
        ],
      ),
    );
  }
}
