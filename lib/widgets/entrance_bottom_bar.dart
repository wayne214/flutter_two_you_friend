import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:uni_links/uni_links.dart';

import 'package:two_you_friend/pages/search_page/custom_delegate.dart';
import 'package:two_you_friend/widgets/menu/draw.dart';
import 'package:two_you_friend/router.dart';

enum UniLinksType {
  string,
}

class Entrance extends StatefulWidget {
  final int indexValue;

  const Entrance({Key key, this.indexValue}) : super(key: key);

  @override
  _EntranceState createState() => _EntranceState();
}

class _EntranceState extends State<Entrance> {
  int _indexNum = 0;
  UniLinksType _type = UniLinksType.string;
  StreamSubscription _sub;
  Router router = Router();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.indexValue != null) {
      _indexNum = widget.indexValue;
    }
  }

  Future<void> initPlatformState() async {
    if (_type == UniLinksType.string) {}
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('two you'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(
                    context: context, delegate: SearchPageCustomDelegata());
              })
        ],
      ),
      body: Stack(
        children: <Widget>[
          _getPagesWidget(0),
          _getPagesWidget(1),
          _getPagesWidget(2)
        ],
      ),
      drawer: MenuDraw(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('推荐'),
              activeIcon: Icon(Icons.people_outline)),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text('关注'),
              activeIcon: Icon(Icons.favorite_border)),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('我'),
              activeIcon: Icon(Icons.people_outline)),
        ],
        iconSize: 24,
        currentIndex: _indexNum,
        fixedColor: Colors.lightBlueAccent,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          if (_indexNum != index) {
            setState(() {
              _indexNum = index;
            });
          }
        },
      ),
    );
  }

  Widget _getPagesWidget(int index){
    List<Widget> widgetList =[
      router.getPageByRouter('homepage'),
      Icon(Icons.directions_transit),
      router.getPageByRouter('userpage')
    ];

    return Offstage(
      offstage: _indexNum != index,
      child: TickerMode(enabled: _indexNum == index,
      child: widgetList[index],),
    );
  }
}
