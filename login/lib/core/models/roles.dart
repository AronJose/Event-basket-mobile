
class RolesModel {
    String id;
    String roleName;

    RolesModel({
        required this.id,
        required this.roleName,
    });

    factory RolesModel.fromJson(Map<String, dynamic> json) => RolesModel(
        id: json["_id"],
        roleName: json["role_name"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "role_name": roleName,
    };
}
