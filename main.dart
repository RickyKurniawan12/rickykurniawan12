import 'package:flutter/material.dart';
import 'package:flutter/secondscreen.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Weather App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text('Flutter Weather App'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text('New York', style: new TextStyle(color: Colors.white,fontSize: 60.0)),
                    Text('Sunny', style: new TextStyle(color: Colors.white, fontSize: 45.0)),
                    Text('72°C',  style: new TextStyle(color: Colors.white,fontSize: 60.0)),
                    Image.network('https://openweathermap.org/img/w/01d.png'),
                    Text('Jun 28, 2018', style: new TextStyle(color: Colors.white,fontSize: 45.0)),
                    Text('18:30', style: new TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  icon: new Icon(Icons.refresh),
                  tooltip: 'Refresh',
                  onPressed: () => null,
                  color: Colors.white,
                ),
              )
            ]
          )
        )
      ),
    );
  }
}
