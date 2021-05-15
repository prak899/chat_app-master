
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget{
  final String middle;

  const HomePage({Key key, this.middle}) : super(key: key);
  
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Center(child:Text('${widget.middle}')),
     floatingActionButton: FloatingActionButton(
       onPressed: (){_bottomsheet(context);},
       backgroundColor: Colors.teal[400],
       child: Icon(Icons.edit),
     ),
     floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
   );
  }
  void _bottomsheet(BuildContext context){
    showModalBottomSheet(context:context, builder: (contxt){
      return Container(
          color: Color(0xFF737373),
              child: Container(
                decoration: BoxDecoration(
                  color:Theme.of(context).canvasColor,
                  borderRadius:BorderRadius.only(
                    topLeft:Radius.circular(30),
                    topRight:Radius.circular(30)
                  )
                ),
          height: 200,
          child: Column(children: [
            ListTile(
              leading:Icon(Icons.edit),
              title: Text('Update your name'),
              onTap: (){Navigator.pop(context);},
            ),
            ListTile(
              leading:Icon(Icons.image),
              title: Text('Update your pic'),
            ),
            ListTile(
              leading:Icon(Icons.settings),
              title: Text('Setting'),
            )
          ],),
        ),
      );
    });
  }
}