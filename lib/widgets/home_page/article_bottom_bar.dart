import 'package:flutter/material.dart';
import 'package:two_you_friend/styles/text_styles.dart';

class ArticleBottomBar extends StatelessWidget {
  // 用户昵称
  final String nickName;

  // 头像
  final String avatarImage;

  // 评论数
  final int commentCount;

  const ArticleBottomBar(
      {Key key, this.nickName, this.avatarImage, this.commentCount})
      : super(key: key);

  Widget getUserWidget() {
    return Row(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.network(
            avatarImage,
            height: 28.0,
            width: 28.0,
            fit: BoxFit.cover,
          ),
        ),
        Padding(padding: EdgeInsets.only(left: 10)),
        Text(
          nickName,
          style: TextStyles.commonStyle(),
        )
      ],
    );
  }

  Widget getCommentWidget() {
    return Row(
      children: <Widget>[
        Icon(
          Icons.comment,
          color: Colors.grey,
          size: 18,
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
        ),
        Text(
          '$commentCount',
          style: TextStyles.commonStyle(),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Expanded(
          child: getUserWidget(),
          flex: 8,
        ),
        Expanded(
          child: getCommentWidget(),
          flex: 2,
        )
      ],
    );
  }
}
