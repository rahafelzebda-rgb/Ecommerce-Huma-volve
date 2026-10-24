import 'package:ecommerce_app_huma_volve/features/home/service/models/model_categories.dart';
import 'package:ecommerce_app_huma_volve/features/home/service/models/product_model.dart';

abstract class HomeStates {}




class HomeInitial extends HomeStates{}


class CategoriesLoading extends HomeStates{}


class CategoriesSuccess extends HomeStates{
  final List<Categories_model> categories;
  CategoriesSuccess(this.categories);}


class CategoriesError extends HomeStates{
  final String  errorMessage;
  CategoriesError(this.errorMessage);}

class ProductsLoading extends HomeStates{}


class ProductsSuccess extends HomeStates{
  final List<Products_model> products;
  ProductsSuccess(this.products);}

class ProductsError extends HomeStates{
  final String  errorMessage;
  ProductsError(this.errorMessage);}