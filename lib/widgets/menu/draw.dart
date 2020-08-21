import 'package:flutter/material.dart';
import 'package:two_you_friend/router.dart';

class MenuDraw extends StatelessWidget {

  const MenuDraw();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: MediaQuery.removePadding(
          context: context,
          child: ListView(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.view_list),
                title: Text('推荐'),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text('关注'),
                onTap: (){
                  Navigator.pop(context);
                  print('点击关注');
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('我'),
                onTap: (){
                  Navigator.pop(context);
                },
              )
            ],
          )),
    );
  }
}
