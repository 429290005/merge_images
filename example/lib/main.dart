import 'package:example/helper_page.dart';
import 'package:example/widget_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Example Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
                onPressed: _toWidget,
                child: Text("ImagesMerge Widget",
                  style: Theme
                      .of(context)
                      .textTheme
                      .title,)),
            SizedBox(height: 30,),
            RaisedButton(
                onPressed: _toHelper,
                child: Text("ImagesMerge Helper",
                  style: Theme
                      .of(context)
                      .textTheme
                      .title,)),
          ],
        ),
      ),
    );
  }

  _toWidget(){
    Navigator.push(context, MaterialPageRoute(
      builder: (context)=>ImagesMergeWidgetPage()
    ));
  }

  _toHelper(){
    Navigator.push(context, MaterialPageRoute(
        builder: (context)=>ImagesMergeHelperPage()
    ));
  }

}
