
class Providermodel {
    String id;
    String providers;
    int v;

    Providermodel({
        required this.id,
        required this.providers,
        required this.v,
    });

    factory Providermodel.fromJson(Map<String, dynamic> json) => Providermodel(
        id: json["_id"],
        providers: json["providers"],
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "providers": providers,
        "__v": v,
    };
}
