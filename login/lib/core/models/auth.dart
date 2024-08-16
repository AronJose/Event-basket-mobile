
class AuthModel {
    String message;
    Saved saved;

    AuthModel({
        required this.message,
        required this.saved,
    });

    factory AuthModel.fromJson(Map<String, dynamic> json) => AuthModel(
        message: json["message"],
        saved: Saved.fromJson(json["saved"]),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "saved": saved.toJson(),
    };
}

class Saved {
    String firstName;
    String lastName;
    String email;
    String contact;
    String image;
    String status;
    String password;
    String passwordSalt;
    String id;
    String role;
    int v;

    Saved({
        required this.firstName,
        required this.lastName,
        required this.email,
        required this.contact,
        required this.image,
        required this.status,
        required this.password,
        required this.passwordSalt,
        required this.id,
        required this.role,
        required this.v,
    });

    factory Saved.fromJson(Map<String, dynamic> json) => Saved(
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        contact: json["contact"],
        image: json["image"],
        status: json["status"],
        password: json["password"],
        passwordSalt: json["password_salt"],
        id: json["_id"],
        role: json["role"],
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "contact": contact,
        "image": image,
        "status": status,
        "password": password,
        "password_salt": passwordSalt,
        "_id": id,
        "role": role,
        "__v": v,
    };
}
