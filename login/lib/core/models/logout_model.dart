class LogoutModel {
  SecssionRemove secssionRemove;

  LogoutModel({
    required this.secssionRemove,
  });

  factory LogoutModel.fromJson(Map<String, dynamic> json) => LogoutModel(
        secssionRemove: SecssionRemove.fromJson(json["secssionRemove"]),
      );

  Map<String, dynamic> toJson() => {
        "secssionRemove": secssionRemove.toJson(),
      };
}

class SecssionRemove {
  String id;
  String token;
  String userId;
  int v;

  SecssionRemove({
    required this.id,
    required this.token,
    required this.userId,
    required this.v,
  });

  factory SecssionRemove.fromJson(Map<String, dynamic> json) => SecssionRemove(
        id: json["_id"],
        token: json["token"],
        userId: json["user_id"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "token": token,
        "user_id": userId,
        "__v": v,
      };
}
