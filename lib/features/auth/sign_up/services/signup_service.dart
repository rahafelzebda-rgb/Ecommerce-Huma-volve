import 'package:ecommerce_app_huma_volve/core/constans/api_endpoint.dart';
import 'package:ecommerce_app_huma_volve/core/network/api_client.dart';
import 'package:ecommerce_app_huma_volve/features/auth/sign_up/models/signup_req_model.dart';

import '../models/signup_res_model.dart';

class SignupService {
  ApiClient apiClient;
  SignupService(this.apiClient);
  Future<SignupResModel> signUp(SignupReqModel signupReqModel)async{
  final response= await apiClient.dio.post(ApiEndpoint.signupEndpoint,data: {
    "email": signupReqModel.email,
    "password": signupReqModel.password,
    "name": signupReqModel.name,
    "avatar": "https://i.imgur.com/LDOO4Qs.jpg",
  });
  final jsonData=response.data;
  final dartData=SignupResModel.fromJson(jsonData);
  return dartData;
  }
}