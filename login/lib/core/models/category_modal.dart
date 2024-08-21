
class CaterogyModel {
    String id;
    String categoryName;
    int v;

    CaterogyModel({
        required this.id,
        required this.categoryName,
        required this.v,
    });

    factory CaterogyModel.fromJson(Map<String, dynamic> json) => CaterogyModel(
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
