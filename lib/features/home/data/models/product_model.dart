import 'package:ecommerce_app_huma_volve/features/home/domain/entites/home_category_entity.dart';
import 'package:ecommerce_app_huma_volve/features/home/domain/entites/home_product_entity.dart';
import 'package:flutter/foundation.dart';

import 'model_categories.dart';

class Products_model extends HomeProductEntity {


  Products_model(
      {super.id,
        super.title,
        super.slug,
        super.price,
        super.description,
        super.category,
        super.images,
        });

  Products_model.fromJson(Map<String, dynamic> json) {
     id = json['id'];
    title = json['title'];
    slug = json['slug'];
    price = json['price'];
    description = json['description'];
    category = (json['category'] != null
        ? new Categories_model.fromJson(json['category'])
        : null) as HomeCategoryEntity;
    images = json['images'].cast<String>();
  }

}

