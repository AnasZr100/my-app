import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Anas extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
  return new AnasState();
  }

}
class AnasState extends State<Anas>{
  String name ='';

  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  bool value4 = false;
  void chv1 (value){
    setState(() {
      value1=value;
    });
  }
  void chv2 (value){
    setState(() {
      value2=value;
    });
  }
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
  void _sos(){
    setState(() {
      name='hello anas';
    });
  }
  void _sos2(String value){
    setState(() {
      name= 'hello $value';
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
  
  Future _showMyDialog() async {
    return showDialog(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.deepPurple.shade100,
          title: const Text('AlertDialog Title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  final GlobalKey<ScaffoldState> scaffoldState= new GlobalKey<ScaffoldState>();
  showSnakBar(){
    scaffoldState.currentState!.showSnackBar(new SnackBar(content: new Text('hello mf')));
  }
   
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: scaffoldState,
      backgroundColor: Colors.white70,
      appBar: new AppBar(title: new Text('hello'
      ),
        backgroundColor: Colors.deepPurple,
      ),
    body: new SingleChildScrollView(
      // alignment: Alignment.center,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        new Card(color: Colors.deepPurple.shade100,
          margin: EdgeInsets.all(10)
          ,child: new Column(children: [
          new TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration (
                labelText: 'Your Phone Number :',
                hintText: 'EX: 09********' ,
                icon: Icon(Icons.phone_android)
            ),
            autocorrect: true,
            onTap: () => _sos() ,
          ),
          new TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration (
                labelText: 'First Name :',
                hintText: 'EX: Anas Zarzour' ,
                icon: Icon(Icons.person_add_alt_1)
            ),
            onChanged: _sos2,
          ),
          new Row( children: [
            new Checkbox(value: value1, onChanged:chv1,activeColor:Colors.deepPurple),
            new Checkbox(value: value2, onChanged:chv2,activeColor:Colors.deepPurple),
          ],
            mainAxisAlignment: MainAxisAlignment.center,),
        ],
        ),
        ),
        new Card(color: Colors.deepPurple.shade100,
        margin: EdgeInsets.all(10)
        ,child: new Column(children: [

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
          new Text(' $name'),
          // ignore: deprecated_member_use
          new RaisedButton(child: new Text('Submit'),
          onPressed: _showMyDialog,
          
          ),
          ],
            ),
        ),
    new Row( mainAxisAlignment: MainAxisAlignment.center,
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
      ),
    ),
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




















