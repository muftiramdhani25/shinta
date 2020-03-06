import 'package:flutter/material.dart';

class HalamanSearch extends StatefulWidget {

  static final String id = 'HALAMAN_SEARCH';

  @override
  _HalamanSearchState createState() => _HalamanSearchState();
}

class _HalamanSearchState extends State<HalamanSearch> {
  var etSearch = TextEditingController();
  bool firstSearch = true;
  String query = "";

  List<String> dataList;
  List<String> filterList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    dataList = List<String>();
    dataList = [
      "Snake","Elephant","Cats","Dog","Orion","Boomerang","Pelican","Ghost","Eagle","Horse Head","Elephant Trunk","Butterfly"
    ];

    dataList.sort();
  }

  _HalamanSearchState(){
    etSearch.addListener((){
      // menampilkan method  yang akan ditampilkan
      if (etSearch.text.isEmpty) {
        setState(() {
          firstSearch = true;
          query = "";
        });
      } else{
        setState(() {
          firstSearch = false;
          query = etSearch.text;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search ListView'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: Column(
          children: <Widget>[
            _createSearchView(),

            firstSearch ? _createListView(): _performSearch()
          ],
        ),
      ),
    );
  }

  Widget _createSearchView(){
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1.0)
      ),
      child: TextField(
        controller: etSearch,
        decoration: InputDecoration(
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.green)
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _createListView(){
    return Flexible(
      child: ListView.builder(
          itemCount: dataList.length,
          itemBuilder: (BuildContext context, int index){
            return Card(
              color: Colors.white,
              elevation: 5.0,
              child: Container(
                margin: EdgeInsets.all(15.0),
                child: Text("${dataList[index]}"),
              ),
            );
          }),
    );
  }

  Widget _performSearch(){
    filterList = List<String>();
    for(int i=0; i<dataList.length; i++){
      var item = dataList[i];
      
      if (item.toLowerCase().contains(query.toLowerCase())) {
        filterList.add(item);
      }  
    }
    return _createFilteredListView();
  }

  Widget _createFilteredListView(){
    return Flexible(
      child: ListView.builder(
          itemCount: filterList.length,
          itemBuilder: (BuildContext context, int index){
            return Card(
              color: Colors.white,
              elevation: 5.0,
              child: Container(
                margin: EdgeInsets.all(15.0),
                child: Text('${filterList[index]}'),
              ),
            );
          }),
    );
  }

}
