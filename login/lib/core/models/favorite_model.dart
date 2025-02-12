class FavoriteModel {
  String message;
  Favorite favorite;

  FavoriteModel({
    required this.message,
    required this.favorite,
  });

  factory FavoriteModel.fromJson(Map<String, dynamic> json) => FavoriteModel(
        message: json["message"],
        favorite: Favorite.fromJson(json["favorite"]),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "favorite": favorite.toJson(),
      };
}

class Favorite {
  String userId;
  List<String> eventId;
  String id;
  DateTime createdAt;
  DateTime updatedAt;
  int v;

  Favorite({
    required this.userId,
    required this.eventId,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory Favorite.fromJson(Map<String, dynamic> json) => Favorite(
        userId: json["user_id"],
        eventId: List<String>.from(json["event_id"].map((x) => x)),
        id: json["_id"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "event_id": List<dynamic>.from(eventId.map((x) => x)),
        "_id": id,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
      };
}
