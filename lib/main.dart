// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.red,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

//HITUNG PANJANG * LEBAR
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final editP = TextEditingController();
  final editL = TextEditingController();
  String _nama = "";
  int _panjang = 0;
  int _lebar = 0;
  int _jml = 0;
  int _luas = 0;
  @override
  void dispose() {
    editP.dispose();
    editL.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LATIHAN 1',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
              'Latihan 1 : Hitung Luas dan Keliling Persegi panjang'),
        ),
        body: Center(
            // child: Image.asset(
            //   "images/bruang.jpg",
            //   // height: 150,
            //   fit: BoxFit.cover,
            //   width: 150,
            //   height: 150,
            // ),

            // fit: BoxFit.cover,
            // width: double.infinity,
            // height: double.infinity,
            child: Column(
          mainAxisSize: MainAxisSize.min,
          // Image.asset("images/bruang.jpg"),
          children: [
            Image.asset(
              "images/bruang.jpg",
              height: 150,
            ),
            // child : Image.asset("images/bruang.jpg", fit:BoxFit.cover, width = double.infinity),
            Text('Masukan panjang :'),
            TextField(
              // onChanged: (text) {
              //   _nama = text;
              controller: editP,
              // },
            ),
            Text('Masukan lebar :'),
            TextField(
              // onChanged: (text) {
              //   _nama = text;
              controller: editL,
              // },
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  // _nama = TextEdit.text;
                  _panjang = int.parse(editP.text);
                  _lebar = int.parse(editL.text);
                  _jml = 2 * (_panjang + _lebar);
                  _luas = _panjang * _lebar;
                }); //refresh
              },
              child: const Text('calculate'),
              //child : Image.asset("images/bruang.jpg", fit:BoxFit.cover, width = double.infinity),
            ),
            Text('keliling $_jml Luas $_luas'), //hasil disini
          ],
          //  ),
        )), //column center
      ), //Scaffold
    ); //Material APP
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Hello App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello'),
//         ),
//         body: Center(
//           child: Image.asset(
//             "images/bruang.jpg",
//             // height: 150,
//             fit: BoxFit.cover,
//             width: 150,
//             height: 150,
//             //),
//             //),
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   MyAppState createState() {
//     return MyAppState();
//   }
// }

// class MyAppState extends State<MyApp> {
//   final textEditController = TextEditingController();
//   String _nama = "";
//   String pilihanSalam = "pagi";
//   String pilihanSalamOut = "";

//   @override
//   void dispose() {
//     // Clean up the controller when the widget is disposed.
//     textEditController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     List<DropdownMenuItem<String>> salam = [];
//     var itm1 = const DropdownMenuItem<String>(
//       value: "pagi",
//       child: Text("selamat pagi"),
//     );
//     var itm2 = const DropdownMenuItem<String>(
//       value: "siang",
//       child: Text("selamat siang"),
//     );
//     salam.add(itm1);
//     salam.add(itm2);

//     return MaterialApp(
//       title: 'Hello App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello'),
//         ),
//         body: Center(
//             child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             DropdownButton(
//               value: pilihanSalam,
//               items: salam,
//               onChanged: (String? newValue) {
//                 setState(() {
//                   if (newValue != null) {
//                     pilihanSalam = newValue;
//                   }
//                 });
//               },
//             ),
//             Text('Masukan Nama :'),
//             TextField(
//               controller: textEditController, //controller
//             ),
//             Padding(
//               padding: EdgeInsets.all(20), //20 pixel ke semua arah
//               child: ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     _nama = textEditController.text; //akses text via controller
//                     pilihanSalamOut = pilihanSalam;
//                   }); //refresh
//                 },
//                 child: const Text('Klik Ini'),
//               ),
//             ),
//             Text(
//               _nama != "" ? 'Halo $_nama  selamat $pilihanSalamOut' : "",
//               style: const TextStyle(
//                   fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red),
//             ), //hasil disini
//           ],
//         )), //column center
//       ), //Scaffold
//     ); //Material APP
//   }
// }
