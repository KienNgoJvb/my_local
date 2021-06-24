import 'package:get/get.dart';

abstract class IHomeRepository {
  Future<Response<dynamic>> getPosts();
}