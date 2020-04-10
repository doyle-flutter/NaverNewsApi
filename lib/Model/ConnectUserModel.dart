
class ConnectUser{
  static const String USER_ID = ".";
  static const String USER_KEY = ".";

  static const Map<String, String> USER_HEADER_DATA = {
    "X-Naver-Client-Id" : ConnectUser.USER_ID,
    "X-Naver-Client-Secret" : ConnectUser.USER_KEY,
    "User-Agent":"Android; ko-kr",
    "Accept": "*/*"
  };
}