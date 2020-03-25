import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'CALCULAR IMC'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  double imc = 0.0;
  double alt = 0.0;
  double peso = 0.0;

  final altController = TextEditingController();
  final pesoController = TextEditingController();

  void calcIMC( alt, peso) {
    setState(() {
      imc = peso / (alt*alt);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: Colors.amberAccent[100],
      body: Padding(
        padding: const EdgeInsets.all(36.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new TextField(
                onChanged: (text) {
                    alt = double.parse(text);
                  },
                  controller: altController,
                  autofocus: true,
                  //obscureText: true,
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: Colors.blue, fontSize: 30),
                  decoration: InputDecoration(
                      labelText:"Altura",
                      labelStyle: TextStyle(color: Colors.black),
                    )
                  ),
              new TextField(
                  onChanged: (text) {
                    peso = double.parse(text);
                  },
                  autofocus: true,
                  //obscureText: true,
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: Colors.blue, fontSize: 30),
                decoration: InputDecoration(
                    labelText:"Peso",
                      labelStyle: TextStyle(color: Colors.black),
                  )
                ),
              new Text(
                'Seu IMC É:',
              ),
              new Text(              
                
                '$calcIMC',
                style: Theme.of(context).textTheme.display1,
              ),  
            ],
          ),
        ),
      ),
    );
  }
}