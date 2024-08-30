class EventModal {
  String message;
  Saved saved;

  EventModal({
    required this.message,
    required this.saved,
  });

  factory EventModal.fromJson(Map<String, dynamic> json) => EventModal(
        message: json["message"],
        saved: Saved.fromJson(json["saved"]),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "saved": saved.toJson(),
      };
}

class Saved {
  String eventName;
  String place;
  String desc;
  String address;
  List<String> services;
  List<String> category;
  String id;
  int v;

  Saved({
    required this.eventName,
    required this.place,
    required this.desc,
    required this.address,
    required this.services,
    required this.category,
    required this.id,
    required this.v,
  });

  factory Saved.fromJson(Map<String, dynamic> json) => Saved(
        eventName: json["Event_name"],
        place: json["place"],
        desc: json["desc"],
        address: json["address"],
        services: List<String>.from(json["services"].map((x) => x)),
        category: List<String>.from(json["category"].map((x) => x)),
        id: json["_id"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "Event_name": eventName,
        "place": place,
        "desc": desc,
        "address": address,
        "services": List<dynamic>.from(services.map((x) => x)),
        "category": List<dynamic>.from(category.map((x) => x)),
        "_id": id,
        "__v": v,
      };
}
