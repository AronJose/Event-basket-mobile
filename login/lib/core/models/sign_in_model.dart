class SignInModel {
  String message;
  UserDetails userDetails;

  SignInModel({
    required this.message,
    required this.userDetails,
  });

  factory SignInModel.fromJson(Map<String, dynamic> json) => SignInModel(
        message: json["message"],
        userDetails: UserDetails.fromJson(json["userDetails"]),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "userDetails": userDetails.toJson(),
      };
}

class UserDetails {
  String id;
  String firstName;
  String lastName;
  String email;
  String token;

  UserDetails({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.token,
  });

  factory UserDetails.fromJson(Map<String, dynamic> json) => UserDetails(
        id: json["_id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "token": token,
      };
}
