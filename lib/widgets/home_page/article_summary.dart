import 'package:flutter/material.dart';
import 'package:two_you_friend/styles/text_styles.dart';
/// 帖子概要信息
///
/// 包括帖子的标题，帖子描述和帖子中的图片
class ArticleSummary extends StatelessWidget {
  // 标题名称
  final String article;

  // 简介
  final String summary;

  // 图片
  final String articleImage;

  const ArticleSummary({Key key, this.article, this.summary, this.articleImage})
      : super(key: key);

  Widget getLeftInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          article,
          style: TextStyles.commonStyle(),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          summary,
          style: TextStyles.commonStyle(0.8, Colors.grey),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          flex: 6,
          child: getLeftInfo(),
        ),
        Expanded(
          flex: 2,
          child: Image.network(
            articleImage,
            width: 80.0,
            height: 80.0,
            fit: BoxFit.cover,
          ),
        )
      ],
    );
  }
}
