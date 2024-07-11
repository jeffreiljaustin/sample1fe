import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomNavigationBar(
        elevation:  3.0,
        onTap: (int val){
          switch(val){
            case 0:
              Navigator.pushNamed(context, '/profile');
              break;
            case 1:
              Navigator.pushNamed(context, '/menu');
              break;
          }
        },
        currentIndex: 0,
        items: const[
          BottomNavigationBarItem(
              icon: Icon(Icons.person_3),
              label: 'Profile'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
        ],
      ),
      appBar: AppBar(
        title: Text('This is Dashboard'),
        backgroundColor: Colors.yellow[300],
        centerTitle: true,
      ),
          body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/yellowbg.jpg')
                )
            ),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
            FlutterCarousel(
            options: CarouselOptions(
            height: 400.0,
              autoPlay: true,
              autoPlayAnimationDuration: Duration(seconds: 2),
              showIndicator: true,
              slideIndicator: CircularSlideIndicator(),
            ),
              items: [
            'assets/cd.jpg',
            'assets/tshirt.jpg',
            'assets/vinyl.jpg',
                  ].map((String imagePath) {
                    return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  color: Colors.yellow[300],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
                    );
                  }).toList(),
            ),
              ],
            ),
                    ),
          ),
    );
  }
}
