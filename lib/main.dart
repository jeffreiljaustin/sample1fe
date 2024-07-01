import 'package:flutter/material.dart';
import 'package:sample/home.dart';
import 'package:sample/pages/dashboard.dart';
import 'package:sample/pages/menu.dart';
import 'package:sample/pages/signup.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/signup',
  routes: {
    '/' : (context) => Dashboard(),
    '/menu' : (context) => Menu(),
    '/profile' : (context) => Home(),
    '/signup' : (context) => Signup(),
  },
));