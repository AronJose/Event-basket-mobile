
class Category {
    String id;
    String categoryName;
    int v;

    Category({
        required this.id,
        required this.categoryName,
        required this.v,
    });

    factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["_id"],
        categoryName: json["category_name"],
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "category_name": categoryName,
        "__v": v,
    };
}
