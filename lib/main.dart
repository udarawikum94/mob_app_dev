import 'package:flutter/material.dart';

/**
 * Create with intelligence idea
 * @since: 06/11/2021 12.54PM
 * @author: Udara Liyanage
 * @api_note: Sample logging page
 */

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample Logging Page - E130340',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.blue.shade100,
        //debugShowCheckedModeBanner: false,
      ),
      home: const IndexPage(),
    );
  }
}

class IndexPage extends StatefulWidget {
  const IndexPage({ Key? key }) : super(key: key);

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample Logging Page: E130340"),
      ),
      body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),

            children: [
              Column(
                children: [
                  SizedBox(height: 100.0,),
                  new Image.asset("assets/images/login_icon.png", width: 150.0, height: 150.0),
                ],
              ),

              SizedBox(height: 20.0,),
              Container(
                // width: 50.0,
                margin: const EdgeInsets.only(right: 10, left: 10),
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_rounded),
                    filled: true,
                  ),

                ),
              ),

              SizedBox(height: 20.0,),
              Container(
                // width: 50.0,
                margin: const EdgeInsets.only(right: 10, left: 10),
                child: const TextField(
                    decoration: InputDecoration(
                      // contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      prefixIcon: Icon(Icons.password_rounded),
                      // icon: Icon(Icons.add_call),
                      filled: true,

                    )
                ),
              ),

              SizedBox(height: 20.0,),
              ElevatedButton(
                onPressed: () {
                  // Validate returns true if the form is valid, otherwise false.
                  Navigator.of(context).pop();
                },
                child: Text('Submit'),
              ),


            ],
          )),
        /*floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),*/ // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  showAlertDialog(BuildContext context) {

    // set up the buttons
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () { },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Welcome"),
      content: Text("You cannot proceed. Under maintainance!"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
