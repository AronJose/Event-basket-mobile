
class Services {
    String id;
    String services;
    int v;

    Services({
        required this.id,
        required this.services,
        required this.v,
    });

    factory Services.fromJson(Map<String, dynamic> json) => Services(
        id: json["_id"],
        services: json["services"],
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "services": services,
        "__v": v,
    };
}
