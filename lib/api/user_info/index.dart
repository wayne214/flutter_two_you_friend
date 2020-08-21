import 'package:two_you_friend/utils/struct/user_info.dart';

class ApiUserInfoIndex {
  static StructUserInfo getOneById(String id) {
    return StructUserInfo('1001', 'test 001',
      'http://image.biaobaiju.com/uploads/20180211/00/1518279965-WhqyaQodpn.jpg'
    );
  }
}