import 'package:ecommerce_app_huma_volve/core/network/api_client.dart';
import 'package:ecommerce_app_huma_volve/features/home/data/models/data_sources/home_remote_data_sources.dart';
import 'package:ecommerce_app_huma_volve/features/home/data/models/model_categories.dart';
import 'package:ecommerce_app_huma_volve/features/home/data/models/product_model.dart';

import '../../../../../core/constans/api_endpoint.dart';

class HomeRemoteDataSourcesImp implements HomeRemoteDataSources {
  final ApiClient apiClient;
  HomeRemoteDataSourcesImp(this.apiClient);

  @override
  Future<List<Categories_model>> getCategories() async {
    final response =await apiClient.dio.get(ApiEndpoint.categoriesEndpoint);
    final List jsonData=response.data;
    final List<Categories_model> categories=
    jsonData.map((e)=>Categories_model.fromJson(e)).toList();
    return categories;
  }

  @override
  Future<List<Products_model>> getProduct(int? categoryId) async {
    final response =await apiClient.dio.get(
        "${ApiEndpoint.categoriesEndpoint}55/$categoryId/${ApiEndpoint.productsEndpoint}"
    );
    final List jsonData=response.data;
    final List<Products_model> products=jsonData.map((e)=>
        Products_model.fromJson(e)).toList();
    return products;
  }
}

