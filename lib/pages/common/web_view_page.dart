import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class CommonWebViewPage extends StatelessWidget{
  // 网址url
  final String url;
  // 构造函数
  CommonWebViewPage({Key key, this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WebviewScaffold(
      url: url,
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
    );
  }

}