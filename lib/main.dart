import 'package:flutter/material.dart';
import 'package:shinta/screen/halaman_home.dart';
import 'package:shinta/screen/halaman_search.dart';
import 'package:shinta/screen/halaman_dashboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HalamanHome.id,
      routes: {
        HalamanHome.id: (context)=> HalamanHome(),
        HalamanSearch.id: (context) => HalamanSearch(),
        MenuDashboardPage.id: (context) => MenuDashboardPage(),
      },
    );
  }
}

