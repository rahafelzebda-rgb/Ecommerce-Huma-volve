import 'package:ecommerce_app_huma_volve/features/home/data/models/model_categories.dart';
import 'package:ecommerce_app_huma_volve/features/home/data/models/product_model.dart';

abstract class HomeRemoteDataSources {
   Future<List<Products_model>>getProduct(int? categoryId);
   Future<List<Categories_model>>getCategories();

}