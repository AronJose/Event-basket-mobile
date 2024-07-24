
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
    String? firstName;
    String? lastName;
    String? email;
    String? contact;
    dynamic image;
    String? status;
    String? password;
    String? passwordSalt;
    String? role;
    String? id;

    Saved({
        required this.firstName,
        required this.lastName,
        required this.email,
        required this.contact,
        required this.image,
        required this.status,
        required this.password,
        required this.passwordSalt,
        required this.role,
        required this.id,
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
        role: json["role"],
        id: json["_id"],
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
        "role": role,
        "_id": id,
    };
}
