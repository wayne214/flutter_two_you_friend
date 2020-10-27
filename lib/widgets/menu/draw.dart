import 'package:flutter/material.dart';
import 'package:two_you_friend/router.dart';

class MenuDraw extends StatelessWidget {

  final Function redirect;

  const MenuDraw(this.redirect);

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
                  redirect('tyfapp://homepage');
                },
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text('关注'),
                onTap: (){
                  Navigator.pop(context);
                  print('点击关注');
                  Router().open(context, 'https://www.baidu.com');
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('我'),
                onTap: (){
                  Navigator.pop(context);
                  redirect('tyfapp://userpage');
                },
              )
            ],
          )),
    );
  }
}
