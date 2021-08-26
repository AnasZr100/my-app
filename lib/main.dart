import 'package:flutter/material.dart';
import 'package:sfw/classes/myclass1.dart';
import 'package:sfw/classes/myclass2.dart';
import 'package:sfw/classes/myclass3.dart';

void main() {
  runApp(new MaterialApp(
    color: Colors.green,
      home: myApp(),
    title: 'Anoos'
  ),

  );
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNa(),

    );
  }
}




class BottomNa extends StatefulWidget {
  @override
  _BottomNaState createState() => _BottomNaState();
}

class _BottomNaState extends State<BottomNa> {

  int _index = 0;
  final List<Widget> _children=[
  Anas(),
  Anas1(),
  Anas2(),
  ];



  void onTappedBar(int valueindex){
    setState(() {
_index=valueindex;
    });
  }


  @override
  Widget build(BuildContext context) {
   return new Scaffold(body: _children[_index ],
     floatingActionButton: new FloatingActionButton(onPressed: ()=> print('anas')
    ,backgroundColor: Colors.deepPurple,
    focusColor: Colors.yellow ,
    child:
    new Icon(Icons.add),
    ),
    bottomNavigationBar: new BottomNavigationBar(onTap: onTappedBar,currentIndex: _index,items: const <BottomNavigationBarItem>
    [
    BottomNavigationBarItem(icon: Icon(Icons.person_add_alt_1,color:Colors.deepPurple),label: 't1'),
    BottomNavigationBarItem(icon: Icon(Icons.ac_unit,color:Colors.deepPurple ,),label: 't2'),
    BottomNavigationBarItem(icon: Icon(Icons.access_time_rounded,color:Colors.deepPurple),label: 't3'),
    ]
    ),



   );
  }
}
