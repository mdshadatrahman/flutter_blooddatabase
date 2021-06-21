import 'package:blood_database/screens/alldonorlistscreen.dart';
import 'package:blood_database/screens/launchscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(App());
}