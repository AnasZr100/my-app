import 'package:flutter/material.dart';

class Anas1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new AnasState1();
  }

}
class AnasState1 extends State<Anas1>{
  bool value3 = false;
  bool value4 = false;
  void chv3 (value){
    setState(() {
      value3=value;
    });
  }
  void chv4 (value){
    setState(() {
      value4=value;
    });
  }
  void ShowBottomSheet(){
    showModalBottomSheet(context: context, builder: (BuildContext context){
      return new Container(
        padding: EdgeInsets.all(22),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text('hello Anas'),
            new FlatButton(onPressed: ()=> Navigator.pop(context), child: new Text('Close'))
          ],
        ),
      );
    }
    );
  }
  String myvalue='anas';
  setValueOn(String value){
    setState(() {
      myvalue=value;
    });
  }
  Future showSimpleDai() async{
    await showDialog(context: context,
        builder: (BuildContext context)
        {
          return new SimpleDialog(
            title: new Text('hello'),
            children: <Widget>[
              new SimpleDialogOption(child: new Text('Yes'),
                onPressed: (){Navigator.pop(context,setValueOn('Yes'));},),
              new SimpleDialogOption(child: new Text('No'),
                onPressed: (){Navigator.pop(context,setValueOn('No'));},),
              new SimpleDialogOption(child: new Text('Maybe'),
                onPressed: (){Navigator.pop(context,setValueOn('Maybe'));},),
            ],
          );
        } );
  }
  final GlobalKey<ScaffoldState> scaffoldState= new GlobalKey<ScaffoldState>();
  showSnakBar(){
    scaffoldState.currentState!.showSnackBar(new SnackBar(content: new Text('hello mf')));
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: scaffoldState,
      appBar:new AppBar( title:new Text('page 2'),
      backgroundColor: Colors.deepPurple,),
      body:new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [ new Row( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Card(color: Colors.deepPurple.shade100,
              margin: EdgeInsets.all(10)
              ,child: new Column(children: [
                new Text(myvalue),
                new FlatButton(onPressed:ShowBottomSheet , child: new Text('click me')),
                new FlatButton(onPressed:showSimpleDai , child: new Text('click me1')),
                new RaisedButton(onPressed: showSnakBar, child: new Text('don\'t touch me'),),
              ],
              ),
            ),
            new Card(color: Colors.deepPurple.shade100,
              margin: EdgeInsets.all(10)
              ,child: new Column(children: [
                new Text(myvalue),
                new FlatButton(onPressed:ShowBottomSheet , child: new Text('click me')),
                new FlatButton(onPressed:showSimpleDai , child: new Text('click me1')),
                new RaisedButton(onPressed: showSnakBar, child: new Text('don\'t touch me'),),
              ],
              ),
            ),
          ],
        )

        ],
      ) ,
      drawer: new Drawer(
        child: new Container(color: Colors.deepPurple.shade100,
          padding: EdgeInsets.all(10),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new CheckboxListTile(value: value3, onChanged: chv3
                ,activeColor:Colors.deepPurple ,
                title: new Text ('Agree to all terms'
                ),
                subtitle: new Text('after reading it'
                ),
                secondary: new Icon(Icons.sms
                ),
              ),
              new SwitchListTile(value: value4, onChanged: chv4
                ,activeColor:Colors.deepPurple ,
                title: new Text ('Agree to all terms'
                ),
                subtitle: new Text('after reading it'
                ),
                secondary: new Icon(Icons.sms
                ),
              ),
            ],
          ),
        ) ,
      ),
    );
  }
}