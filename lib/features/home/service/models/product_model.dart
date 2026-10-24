import 'package:flutter/foundation.dart';

import 'model_categories.dart';

class Products_model {
  int? id;
  String? title;
  String? slug;
  int? price;
  String? description;
  Categories_model? category;
  List<String>? images;
  String? creationAt;
  String? updatedAt;

  Products_model(
      {this.id,
        this.title,
        this.slug,
        this.price,
        this.description,
        this.category,
        this.images,
        });

  Products_model.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    slug = json['slug'];
    price = json['price'];
    description = json['description'];
    category = json['category'] != null
        ? new Categories_model.fromJson(json['category'])
        : null;
    images = json['images'].cast<String>();
  }

}

