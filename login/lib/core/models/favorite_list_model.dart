class FavoriteListModel {
  String id;
  String userId;
  List<EventId> eventId;
  DateTime createdAt;
  DateTime updatedAt;
  int v;

  FavoriteListModel({
    required this.id,
    required this.userId,
    required this.eventId,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory FavoriteListModel.fromJson(Map<String, dynamic> json) =>
      FavoriteListModel(
        id: json["_id"],
        userId: json["user_id"],
        eventId: List<EventId>.from(
            json["event_id"].map((x) => EventId.fromJson(x))),
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "user_id": userId,
        "event_id": List<dynamic>.from(eventId.map((x) => x.toJson())),
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
      };
}

class EventId {
  String id;
  String eventName;
  List<String> image;
  String place;
  String desc;
  String address;
  List<String> services;
  List<String> category;
  List<String> providing;
  List<String> providers;
  String email;
  String contact;
  String status;
  int v;
  DateTime createdAt;
  String? userId;

  EventId({
    required this.id,
    required this.eventName,
    required this.image,
    required this.place,
    required this.desc,
    required this.address,
    required this.services,
    required this.category,
    required this.providing,
    required this.providers,
    required this.email,
    required this.contact,
    required this.status,
    required this.v,
    required this.createdAt,
    this.userId,
  });

  factory EventId.fromJson(Map<String, dynamic> json) => EventId(
        id: json["_id"],
        eventName: json["Event_name"],
        image: List<String>.from(json["image"].map((x) => x)),
        place: json["place"],
        desc: json["desc"],
        address: json["address"],
        services: List<String>.from(json["services"].map((x) => x)),
        category: List<String>.from(json["category"].map((x) => x)),
        providing: List<String>.from(json["providing"].map((x) => x)),
        providers: List<String>.from(json["providers"].map((x) => x)),
        email: json["email"],
        contact: json["contact"],
        status: json["status"],
        v: json["__v"],
        createdAt: DateTime.parse(json["created_at"]),
        userId: json["user_id"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "Event_name": eventName,
        "image": List<dynamic>.from(image.map((x) => x)),
        "place": place,
        "desc": desc,
        "address": address,
        "services": List<dynamic>.from(services.map((x) => x)),
        "category": List<dynamic>.from(category.map((x) => x)),
        "providing": List<dynamic>.from(providing.map((x) => x)),
        "providers": List<dynamic>.from(providers.map((x) => x)),
        "email": email,
        "contact": contact,
        "status": status,
        "__v": v,
        "created_at": createdAt.toIso8601String(),
        "user_id": userId,
      };
}
