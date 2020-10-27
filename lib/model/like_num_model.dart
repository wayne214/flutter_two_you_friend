import 'package:flutter/material.dart';

class LikeNumModel with ChangeNotifier {
  Map<String, int> _likeInfo;
  void setLikeNum(String articleId, int likeNum) {
    if (_likeInfo == null) {
      _likeInfo = {};
    }
    if (articleId == null) {
      return;
    }
    _likeInfo[articleId] = likeNum;
  }

  int getLikeNum(String articleId, [int likeNum = 0]) {
    if (_likeInfo == null) {
      _likeInfo = {};
    }
    if (articleId == null) {
      return likeNum;
    }

    if (_likeInfo[articleId] == null) {
      _likeInfo[articleId] = likeNum;
    }

    return _likeInfo[articleId];
  }

  void like(String articleId) {
    if (_likeInfo == null || articleId == null) {
      _likeInfo = {};
    }
    if (_likeInfo == null || _likeInfo[articleId] == null) {
      _likeInfo[articleId] = 0;
    }
    _likeInfo[articleId] = _likeInfo[articleId] + 1;

    notifyListeners();
  }
}
