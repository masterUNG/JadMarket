// To parse this JSON data, do
//
//     final categoryModel = categoryModelFromJson(jsonString);

import 'dart:convert';

CategoryModel categoryModelFromJson(String str) =>
    CategoryModel.fromJson(json.decode(str));

String categoryModelToJson(CategoryModel data) => json.encode(data.toJson());

class CategoryModel {
  CategoryModel({
    this.category,
  });

  List<Category>? category;

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        category: json["category"] == null
            ? null
            : List<Category>.from(
                json["category"].map((x) => Category.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "category": category == null
            ? null
            : List<dynamic>.from(category!.map((x) => x.toJson())),
      };
}

class Category {
  Category({
    this.categoryTitle,
    this.type,
  });

  String? categoryTitle;
  List<Type>? type;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        categoryTitle:
            json["category_title"] == null ? null : json["category_title"],
        type: json["type"] == null
            ? null
            : List<Type>.from(json["type"].map((x) => Type.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "category_title": categoryTitle == null ? null : categoryTitle,
        "type": type == null
            ? null
            : List<dynamic>.from(type!.map((x) => x.toJson())),
      };
}

class Type {
  Type({
    this.titleType,
    this.images,
  });

  String? titleType;
  String? images;

  factory Type.fromJson(Map<String, dynamic> json) => Type(
        titleType: json["title_type"] == null ? null : json["title_type"],
        images: json["images"] == null ? null : json["images"],
      );

  Map<String, dynamic> toJson() => {
        "title_type": titleType == null ? null : titleType,
        "images": images == null ? null : images,
      };
}
