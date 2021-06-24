import 'package:get/get.dart';
import 'package:my_local/app/domain/data/api_helper.dart';
import 'package:my_local/app/domain/repositories/home/i_home_repository.dart';

class HomeRepository implements IHomeRepository {
  HomeRepository({required this.apiHelper});

  final ApiHelper apiHelper;

  @override
  Future<Response<dynamic>> getPosts() async{
    // TODO: implement getPosts
    final response = await apiHelper.getPosts();
    return response;
  }

}