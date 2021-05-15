import 'package:flutter/material.dart';

class List extends StatelessWidget {
  var name = 'Network & Setting';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.redAccent,
            centerTitle: true,
            title: Text(
              'Setting',
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () => {debugPrint("Clicked")})
            ],
          ),
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  child: Text('LIST SETTING'),
                  decoration: BoxDecoration(color: Colors.white),
                ),
                ListTile(
                    leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://yt3.ggpht.com/ytc/AAUvwniqJ6QLfkDmOq90UvQdW9cUiPxu5WxSp3yuLDC7Pw=s48-c-k-c0x00ffffff-no-rj')),
                    title: Text('Active Member'),
                    subtitle: Text('Your active members'),
                    trailing: Icon(Icons.chevron_right_outlined),
                    onTap: () => debugPrint("Hello Active")),
                ListTile(
                    title: Text('Lazy Member'),
                    subtitle: Text('Your lazy members'),
                    trailing: Icon(Icons.chevron_right_outlined),
                    onTap: () => debugPrint("Hello Lazy"))
              ],
            ),
          ),
          body: ListView(
            children: <Widget>[
              ListTile(
                leading: Container(
                  height: 40,
                  width: 40,
                  child: Icon(
                    Icons.phone_android,
                    color: Colors.blue,
                  ),
                ),
                trailing: Icon(Icons.chevron_right_outlined),
                title: Text(
                  'About phone',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 21,
                  ),
                ),
                onTap: () {
                  debugPrint('Clicked netwrok and setting');
                },
              ),
              ListTile(
                leading: Container(
                  height: 40,
                  width: 40,
                  child: Icon(
                    Icons.update_outlined,
                    color: Colors.red,
                  ),
                ),
                title: Text(
                  'System apps Updator',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 21,
                  ),
                ),
                trailing: Icon(Icons.chevron_right_outlined),
                onTap: () {
                  debugPrint('Clicked netwrok and setting');
                },
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('Home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_shopping_cart), title: Text('Cart')),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), title: Text('Me')),
          ]),
        ));
  }
}
