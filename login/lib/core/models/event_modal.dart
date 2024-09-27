// To parse this JSON data, do
//
//     final eventModal = eventModalFromJson(jsonString);

import 'dart:convert';

List<EventModal> eventModalFromJson(String str) =>
    List<EventModal>.from(json.decode(str).map((x) => EventModal.fromJson(x)));

String eventModalToJson(List<EventModal> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class EventModal {
  String id;
  String eventName;
  List<String> image;
  String place;
  String desc;
  String address;
  List<String> services;
  List<String> category;
  List<dynamic> providing;
  String providers;
  String email;
  String contact;
  String status;
  int v;

  EventModal({
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
  });

  factory EventModal.fromJson(Map<String, dynamic> json) => EventModal(
        id: json["_id"],
        eventName: json["Event_name"],
        image: List<String>.from(json["image"].map((x) => x)),
        place: json["place"],
        desc: json["desc"],
        address: json["address"],
        services: List<String>.from(json["services"].map((x) => x)),
        category: List<String>.from(json["category"].map((x) => x)),
        providing: List<dynamic>.from(json["providing"].map((x) => x)),
        providers: json["providers"],
        email: json["email"],
        contact: json["contact"],
        status: json["status"],
        v: json["__v"],
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
        "providers": providers,
        "email": email,
        "contact": contact,
        "status": status,
        "__v": v,
      };
}
