import 'package:ecommerce_app_huma_volve/core/constans/api_endpoint.dart';
import 'package:ecommerce_app_huma_volve/core/network/api_client.dart';

import '../models/login _model.dart';

class LoginService {
  ApiClient apiClient ;
  LoginService(this.apiClient);
 Future<LoginModel> login({required String email,required String password})async{
   final response= await apiClient.dio.post(
        ApiEndpoint.loginEndpoint,
        data:{"email": email, "password": password
    } );
   final Map<String ,dynamic> jsonData =response.data;

   final modeldata=LoginModel.fromJson(jsonData);
   return modeldata;

  }
}
//Api => jsonData => Model =>App