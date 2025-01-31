class ProfileModel {
  String message;
  List<ProfileDatum> profileData;

  ProfileModel({
    required this.message,
    required this.profileData,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        message: json["message"],
        profileData: List<ProfileDatum>.from(
            json["profileData"].map((x) => ProfileDatum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "profileData": List<dynamic>.from(profileData.map((x) => x.toJson())),
      };
}

class ProfileDatum {
  Id id;
  String firstName;
  String lastName;
  String email;
  String contact;
  dynamic image;
  String status;
  String password;
  String passwordSalt;
  String role;
  int v;

  ProfileDatum({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.contact,
    required this.image,
    required this.status,
    required this.password,
    required this.passwordSalt,
    required this.role,
    required this.v,
  });

  factory ProfileDatum.fromJson(Map<String, dynamic> json) => ProfileDatum(
        id: Id.fromJson(json["_id"]),
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        contact: json["contact"],
        image: json["image"],
        status: json["status"],
        password: json["password"],
        passwordSalt: json["password_salt"],
        role: json["role"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id.toJson(),
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "contact": contact,
        "image": image,
        "status": status,
        "password": password,
        "password_salt": passwordSalt,
        "role": role,
        "__v": v,
      };
}

class Id {
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
  String userId;
  DateTime createdAt;
  int v;

  Id({
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
    required this.userId,
    required this.createdAt,
    required this.v,
  });

  factory Id.fromJson(Map<String, dynamic> json) => Id(
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
        userId: json["user_id"],
        createdAt: DateTime.parse(json["created_at"]),
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
        "providers": List<dynamic>.from(providers.map((x) => x)),
        "email": email,
        "contact": contact,
        "status": status,
        "user_id": userId,
        "created_at": createdAt.toIso8601String(),
        "__v": v,
      };
}
