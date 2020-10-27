import 'package:flutter/material.dart';
import 'package:two_you_friend/api/content/index.dart';
import 'package:two_you_friend/utils/struct/content_detail.dart';

class HomePage extends StatefulWidget {
  const HomePage();

  @override
  createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  List<StructContentDetail> contentList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    setState(() {
      contentList = ApiContentIndex().getRecommendList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int position) {
          return Text('hhhh');
        },
        separatorBuilder: (context, index) {
          return Divider(
            height: .5,
            color: Colors.lightBlueAccent,
          );
        },
        itemCount: contentList.length);
  }
}
