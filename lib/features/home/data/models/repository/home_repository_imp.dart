import 'package:dartz/dartz.dart';
import 'package:ecommerce_app_huma_volve/core/error/error_handiling.dart';

import 'package:ecommerce_app_huma_volve/core/failure/failure.dart';
import 'package:ecommerce_app_huma_volve/features/home/data/models/data_sources/home_remote_data_sources.dart';

import 'package:ecommerce_app_huma_volve/features/home/domain/entites/home_category_entity.dart';

import 'package:ecommerce_app_huma_volve/features/home/domain/entites/home_product_entity.dart';

import '../../../domain/repository/home_repository.dart';

class HomeRepositoryImp  implements HomeRepository{
  final HomeRemoteDataSources homeRemoteDataSources;

  HomeRepositoryImp(this.homeRemoteDataSources);
  @override
  Future<Either<Failure, List<HomeCategoryEntity>>> getCategories() async{
    try{
      final categories= await homeRemoteDataSources.getCategories();
      return Right(categories as List<HomeCategoryEntity>);
    }

    catch(e){
return left(ErrorHandiling.handel(e));
    }
  }

  @override
  Future<Either<Failure, List<HomeProductEntity>>> getProducts(int? categoryId) async{
 try{
   final products= await homeRemoteDataSources.getProduct(categoryId);
   return Right (products as List<HomeProductEntity>);
 }
 catch(e){
   return left(ErrorHandiling.handel(e));
 }
  }

}