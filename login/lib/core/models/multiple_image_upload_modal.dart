class MultipleImageUploadModal {
  String message;
  List<String> filepaths;

  MultipleImageUploadModal({
    required this.message,
    required this.filepaths,
  });

  factory MultipleImageUploadModal.fromJson(Map<String, dynamic> json) =>
      MultipleImageUploadModal(
        message: json["message"],
        filepaths: List<String>.from(json["filepaths"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "filepaths": List<dynamic>.from(filepaths.map((x) => x)),
      };
}
