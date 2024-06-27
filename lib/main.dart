import 'package:flutter/material.dart';
import 'package:sample/home.dart';
import 'package:sample/pages/dashboard.dart';
import 'package:sample/pages/menu.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/menu',
  routes: {
    '/' : (context) => Dashboard(),
    '/menu' : (context) => Menu(),
    '/profile' : (context) => Home(),
  },
));