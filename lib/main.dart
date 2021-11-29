import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Product'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 20, 40, 80),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.blueGrey,
          ),
          padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
          width: 330,
          height: 450,
          // color: Colors.blueGrey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  new Text("Название"),
                  SizedBox(height: 20),
                  new Text("Костюм тройка"),
                  SizedBox(
                    height: 60,
                  ),
                  new Text("Модель"),
                  SizedBox(height: 20),
                  new Text("Robert Rierra"),
                  SizedBox(height: 60),
                  new Text("Артикул модели"),
                  new Text("2345436"),
                  SizedBox(height: 60),
                  new Text("Размеры"),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.all(9),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.grey,
                    ),
                    width: 90,
                    height: 35,
                    child: Text(
                      "196/2 * 2",
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  new Text(""),
                  SizedBox(height: 20),
                  new Text("1234"),
                  SizedBox(
                    height: 60,
                  ),
                  new Text("Тип"),
                  SizedBox(height: 20),
                  new Text("Костюм"),
                  SizedBox(height: 60),
                  new Text("Артикул ткани"),
                  new Text("Vendor code"),
                  SizedBox(height: 60),
                  new Text("")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
