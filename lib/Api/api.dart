import 'package:suuz/Api/server.dart';

class Api {
  String server = MyServer().server;
  String login = '/api/login';
  String register = '/api/register';
  String getNews = '/api';
  String postNews = '/api/post-news';
}
