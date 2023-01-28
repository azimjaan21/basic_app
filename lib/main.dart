import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Basic App'),
        ),
        backgroundColor: Color.fromRGBO(30, 0, 255, 1),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "images/tech.png",
            ),
          ),
          SizedBox(
            height: 21,
          ),
          Text(
            "Just  starting app soon...",
            style: TextStyle(
              color: Colors.black,
              fontSize: 28,
            ),
          ),
          SizedBox(
            height: 21,
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: 400,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Go to next page',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
      
       elevation: 33,
        items: [
         
          BottomNavigationBarItem(
           backgroundColor: Color.fromRGBO(30, 0, 255, 1),
            label: 'home',
            icon: Icon(Icons.home),
          ),

           BottomNavigationBarItem(
          backgroundColor: Colors.white,
            label: 'favorites',
            icon: Icon(Icons.favorite),
          ),
            BottomNavigationBarItem(
          backgroundColor: Colors.white,
            label: 'camera',
            icon: Icon(Icons.camera),
          ),
            BottomNavigationBarItem(
          backgroundColor: Colors.white,
            label: 'settings',
            icon: Icon(Icons.settings),
          ),

        ],
      ),
    );
  }
}
