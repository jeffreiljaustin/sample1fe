import 'package:flutter/material.dart';
import 'package:sample/home.dart';
import 'package:sample/pages/dashboard.dart';
import 'package:sample/pages/menu.dart';
import 'package:sample/pages/signup.dart';
import 'package:sample/pages/login.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/login',
  routes: {
    '/' : (context) => Dashboard(),
    '/menu' : (context) => Menu(),
    '/profile' : (context) => Home(),
    '/signup' : (context) => Signup(),
    '/login' : (context) => Login(),
  },
));