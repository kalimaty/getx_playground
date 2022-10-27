import 'package:get/get.dart';
// import 'package:get/get_connect/http/src/request/request.dart';
import 'package:getx_playground/getx_connect/user_model.dart';

class UserProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'https://reqres.in/';
    // All request will pass to jsonEncode so UserModel.listFromJson
    httpClient.defaultDecoder = UserModel.listFromJson;
    // httpClient.addRequestModifier((Request request) {
    //   // JWT
    //   request.headers['Authorization'] = 'Bearer 12345678910';
    //   // API key
    //   request.headers['apikey'] = '12345678';
    //   return request;
    // });

    // httpClient.addResponseModifier<UserModel>((request, response) {
    //   UserModel? model = response.body;
    //   if (model!.firstName.contains('sensitive keyworld')) {}
    // });
  }

  // Get request for list of users
  Future<Response<List<UserModel>>> getUsers() => get('api/users');
}
