import 'package:flutter/material.dart';
import 'package:two_you_friend/utils/tools//json_config.dart';

class UserPageIndex extends StatelessWidget{
  final String userId;

  const UserPageIndex({Key key, this.userId}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    String myUserId = userId;
    if(ModalRoute.of(context).settings.arguments != null) {
      Map dataInfo = JsonConfig.objectToMap(ModalRoute.of(context).settings.arguments);
      myUserId = dataInfo['userId'].toString();
    }

    return Text('I am use page ${myUserId}');
  }
}