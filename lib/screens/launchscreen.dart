import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Architecture Blood Bank',      
      home: Scaffold(
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
                fontSize: 30,
                color: Colors.grey[700],
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
                  color: Colors.grey[700],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton.icon(
                  onPressed: (){},
                  label: Text('GO FOR BLOOD'),
                  icon: Icon(
                    Icons.double_arrow_sharp,
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red[800],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}