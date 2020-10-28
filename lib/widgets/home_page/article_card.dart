import 'package:flutter/material.dart';

import 'package:two_you_friend/router.dart';
import 'package:two_you_friend/utils/struct/content_detail.dart';
import 'package:two_you_friend/widgets/home_page/article_bottom_bar.dart';
import 'package:two_you_friend/widgets/home_page/article_like_bar.dart';
import 'package:two_you_friend/widgets/home_page/article_summary.dart';

/// 此为帖子描述类，包括了帖子UI中的所有元素
class ArticleCard extends StatelessWidget {
  // 传入的卡片信息
  final StructContentDetail articleInfo;

  const ArticleCard({Key key, this.articleInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(8),
      child: FlatButton(
          onPressed: null,
          child: Column(
            children: <Widget>[
              ArticleSummary(
                article: articleInfo.title,
                articleImage: articleInfo.articleImage,
                summary: articleInfo.summary,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 9,
                    child: ArticleBottomBar(
                      nickName: articleInfo.userInfo.nickName,
                      avatarImage: articleInfo.userInfo.headerUrl,
                      commentCount: articleInfo.commentNum,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: ArticleLikeBar(
                      articleId: articleInfo.id,
                      likeNum: articleInfo.likeNum,
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
