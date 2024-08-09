
class Imageupload {
    String message;
    String filepath;

    Imageupload({
        required this.message,
        required this.filepath,
    });

    factory Imageupload.fromJson(Map<String, dynamic> json) => Imageupload(
        message: json["message"],
        filepath: json["filepath"],
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "filepath": filepath,
    };
}
