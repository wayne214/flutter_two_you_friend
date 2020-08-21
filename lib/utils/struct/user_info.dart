/// 用户信息
///
/// {
///   "nickname" : "string",
///   "headerUrl" : "string",
///   "uid" : "string"
/// }

class StructUserInfo {
  /// 标题
  final String nickName;
  /// 简要
  final String headerUrl;
  /// 主题内容
  final String uid;
  /// 默认构造函数
  StructUserInfo(this.nickName, this.headerUrl, this.uid);


}