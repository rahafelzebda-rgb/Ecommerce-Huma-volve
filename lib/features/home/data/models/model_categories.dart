import 'package:ecommerce_app_huma_volve/features/home/domain/entites/home_category_entity.dart';

class Categories_model extends HomeCategoryEntity {

  Categories_model({super.id, super.name,});

  Categories_model.fromJson(Map<String, dynamic> json)
      : super(
    id: json['id'],
    name: json['name'],
  );

}