class Providingmodel {
    String id;
    String providing;
    int v;

    Providingmodel({
        required this.id,
        required this.providing,
        required this.v,
    });

    factory Providingmodel.fromJson(Map<String, dynamic> json) => Providingmodel(
        id: json["_id"],
        providing: json["providing"],
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "providing": providing,
        "__v": v,
    };
}
