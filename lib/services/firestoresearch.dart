import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchSc extends StatefulWidget {
  @override
  _SearchScState createState() => _SearchScState();
}

class _SearchScState extends State<SearchSc> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: new AppBar(title: Text('Search'),),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                onChanged: (val){
                },
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 25),
                  hintText: 'Search by Blood Group',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: (){
                  
                }, 
                child: Text('Search'),
                ),
            ),
          ],
        ),
      ),
    );
  }
}

class DataController extends GetxController{
  Future getData(String collection) async {
    final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    QuerySnapshot snapshot = await firebaseFirestore.collection(collection).get();
    return snapshot.docs;
  }

  Future queryData(String queryString) async{
    return FirebaseFirestore.instance.collection('Donors')
    .where('bloodGroup', isGreaterThanOrEqualTo: queryString
    ).get();

  }

}