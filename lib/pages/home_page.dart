import 'package:csv/csv.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<List<dynamic>> _veriler = [];
  String _url =
      "https://docs.google.com/spreadsheets/.../pub?output=csv";
  bool isLoading = false;

  void csv_islemleri() async {
    setState(() {
      isLoading = true;
    });
    var result = await http.get(Uri.parse(_url));
    var myCsv = result.body;
    List<List<dynamic>> _gecici = CsvToListConverter().convert(myCsv);
    setState(() {
      _veriler = _gecici;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add), onPressed: csv_islemleri),
      appBar: AppBar(
        title: Text('Flutter Csv'),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : _veriler.isEmpty
              ? Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Google E-Tablo\n-\nFlutter",
                    textScaleFactor: 3,
                    textAlign: TextAlign.center,
                  ),
                )
              : ListView.builder(
                  itemCount: _veriler.length,
                  itemBuilder: (_, index) {
                    return Card(
                      margin: const EdgeInsets.all(3),
                      color: index % 2 == 0
                          ? Colors.orangeAccent
                          : Colors.lightBlueAccent,
                      child: ListTile(
                        leading: MyText(index: index, SutunSayisi: 0),
                        title: Row(
                          children: [
                            MyText(index: index, SutunSayisi: 1),
                            SizedBox(
                              width: 10,
                            ),
                            MyText(index: index, SutunSayisi: 2),
                          ],
                        ),
                        trailing: Icon(
                          Icons.account_circle_outlined,
                          size: 36,
                        ),
                      ),
                    );
                  },
                ),
    );
  }

  //MyText(index: index,SutunSayisi: 2
  Widget MyText({int index, int SutunSayisi}) {
    return Text(
      _veriler[index][SutunSayisi].toString() ?? " ",
      style: TextStyle(fontSize: SutunSayisi == 0 ? 24 : 20),
    );
  }
}
