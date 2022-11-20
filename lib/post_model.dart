import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    this.count,
    this.totalPages,
    this.perPage,
    this.currentPage,
    required this.results,
  });

  int? count;
  int? totalPages;
  int? perPage;
  int? currentPage;
  List<Result> results;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    count: json["count"],
    totalPages: json["total_pages"],
    perPage: json["per_page"],
    currentPage: json["current_page"],
    results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "count": count,
    "total_pages": totalPages,
    "per_page": perPage,
    "current_page": currentPage,
    "results": List<dynamic>.from(results.map((x) => x.toJson())),
  };
}

class Result {
  Result({
    this.category,
    this.name,
    this.details,
    this.size,
    this.colour,
    this.price,
    this.mainImage,
    this.id,
  });

  Category? category;
  String? name;
  String? details;
  String? size;
  String? colour;
  int? price;
  String? mainImage;
  int? id;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    category: Category.fromJson(json["category"]),
    name: json["name"],
    details: json["details"],
    size: json["size"],
    colour: json["colour"],
    price: json["price"],
    mainImage: json["main_image"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "category": category?.toJson(),
    "name": name,
    "details": details,
    "size": size,
    "colour": colour,
    "price": price,
    "main_image": mainImage,
    "id": id,
  };
}

class Category {
  Category({
    this.name,
    this.icon,
    this.id,
  });

  String? name;
  String? icon;
  int? id;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    name: json["name"],
    icon: json["icon"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "icon": icon,
    "id": id,
  };
}
