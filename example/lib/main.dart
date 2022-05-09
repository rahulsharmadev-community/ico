import 'package:example/data.dart';
import 'package:flutter/material.dart';
import 'package:ico/ico.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: 'Ico Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var list = icoArg;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: DropdownButtonHideUnderline(
          child: TextField(
            onChanged: (v) {
              setState(() {
                list = icoArg
                    .where((element) => element.toString().contains(v))
                    .toList();
              });
            },
          ),
        ),
      ),
      body: GridView.builder(
          itemCount: list.length,
          shrinkWrap: true,
          padding: EdgeInsets.all(15),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 10, crossAxisSpacing: 15, mainAxisSpacing: 15),
          itemBuilder: (itemBuilder, index) => Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridTile(
                    child: Icon(
                      list[index],
                      size: 30,
                    ),
                    footer: Text(list[index]
                        .toString()
                        .replaceAll('IconData(U+', '')
                        .replaceAll(')', '')),
                  ),
                ),
              )),
    );
  }
}
