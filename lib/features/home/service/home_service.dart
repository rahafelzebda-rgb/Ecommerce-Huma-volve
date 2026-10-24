import 'package:ecommerce_app_huma_volve/core/constans/api_endpoint.dart';
import 'package:ecommerce_app_huma_volve/core/network/api_client.dart';

import 'models/model_categories.dart';
import 'models/product_model.dart';


class HomeService {
  final ApiClient apiClient;
  HomeService(this.apiClient);

 Future<List<Categories_model>>  getcategories()async{
   final response =await apiClient.dio.get(ApiEndpoint.categoriesEndpoint);
   final List jsonData=response.data;
   final List<Categories_model> categories=
   jsonData.map((e)=>Categories_model.fromJson(e)).toList();
   return categories;}

Future <List<Products_model>>getproducts(int? id)async{
  final response =await apiClient.dio.get(
     "${ApiEndpoint.categoriesEndpoint}/$id/${ApiEndpoint.productsEndpoint}"
  );
  final List jsonData=response.data;
  final List<Products_model> products=jsonData.map((e)=>
      Products_model.fromJson(e)).toList();
  return products;


}




}