import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'navbar.dart';
import 'theme_provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)=> ChangeNotifierProvider(
      create: (context)=>ThemeProvider(),
  builder: (context, _){
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      themeMode: themeProvider.themeMode,
      theme:MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData(
      //
      //   primarySwatch: Colors.blue,
      // ),
      home: const Navbar(),
    );
  },
  );
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//
//    int _counter=0;
//
//   void _incrementCounter() {
//     setState(() {
//
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
