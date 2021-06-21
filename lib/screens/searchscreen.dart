import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String _chosenValue;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(      
      home: Scaffold(
        appBar: AppBar(
          title: Text('Search Blood'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Scaffold(
            body: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  DropdownButton<String>(
                  value: _chosenValue,
                  style: TextStyle(color: Colors.black),
                  items: <String>[
                    'A+','A-','B+', 'B-', 'AB+', 'AB-', 'O+', 'O-',
                  ]
                  .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                hint: Text(
                  'Please choose a blood type',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onChanged: (String value){
                  setState(() {
                    _chosenValue = value;
                    });
                  },
                ),
                ElevatedButton(
                  onPressed: (){}, 
                  child: Text('Find'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,                    
                  ),
                ),
                


                ],
              ),
            ),
          ),
        ),
    );
  }
}