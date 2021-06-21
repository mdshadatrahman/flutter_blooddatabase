import 'package:blood_database/screens/alldonorlistscreen.dart';
import 'package:blood_database/screens/searchscreen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SrchBlood(),
   );
  }
}

class SrchBlood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.red[400],
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/seu.png',
                height: 200,
                width: 200,
                ),
                SizedBox(height: 30),
              Text(
                'Architecture Blood Bank',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                  ),
                ),
                Divider(
                  color: Colors.black,
                  height: 20,
                  thickness: 3,
                ),
                Text(
                  'BLOOD FOR LIFE THAT WE SERVE',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.grey[200],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton.icon(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SearchScreen()),
                      );
                    },
                    label: Text('GO FOR BLOOD'),
                    icon: Icon(
                      Icons.double_arrow_sharp,
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green[700],
                    ),
                  ),
                ),
            ],
          ), 
      ),
    );
  }
}