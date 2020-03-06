import 'package:flutter/material.dart';
import 'package:shinta/screen/halaman_dashboard.dart';
import 'package:shinta/screen/halaman_search.dart';

class HalamanHome extends StatefulWidget {

  static final String id ='HALAMAN_MENU';

  @override
  _HalamanHomeState createState() => _HalamanHomeState();
}

class _HalamanHomeState extends State<HalamanHome> with SingleTickerProviderStateMixin{
  TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff10586E),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> MenuDashboardPage()));
      },
        ),
        bottom: TabBar(
          controller: _controller,
          tabs: <Widget>[
            Tab(text: 'Authors',),
            Tab(text: 'Jurnals',),
            Tab(text: 'Affiliations',)
          ],
        ),

      ),
      body: TabBarView(
          controller: _controller,
          children: <Widget>[
            HalamanSearch(),
            HalamanSearch(),
            HalamanSearch(),
          ]),
    );
  }
}
