import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DonorList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Donors'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: GetDonorList(),
    );
  }
}
class GetDonorList extends StatefulWidget {
  @override
  _GetDonorListState createState() => _GetDonorListState();
}

class _GetDonorListState extends State<GetDonorList> {
  Future getDonorList() async {
    var firestore = FirebaseFirestore.instance;
    QuerySnapshot qn = await firestore.collection('Donors').get();
    return qn.docs;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: getDonorList(),
        builder: (_, snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(
              child: Text('Loading'),
            );
          } else {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (_, index){
                return Padding(
                      padding: EdgeInsets.all(8),
                      child: ListTile(
                        tileColor: Colors.grey[400],
                        title: Text(
                          snapshot.data[index].data()['name'].toString(),
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            ),
                          ),
                          subtitle: Text(
                            snapshot.data[index].data()['bloodGroup'].toString(),
                            style: TextStyle(
                              fontSize: 24,
                            ),
                          ),
                      ),
                );
              },
            );
          }
        },
      ),
    );
  }
}