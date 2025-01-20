class ListingCommonModel {
  List<ProvidersDatum> providersData;
  List<ProvidingData> providingDatas;
  List<Service> services;
  List<CategoryList> categoryList;

  ListingCommonModel({
    required this.providersData,
    required this.providingDatas,
    required this.services,
    required this.categoryList,
  });

  factory ListingCommonModel.fromJson(Map<String, dynamic> json) =>
      ListingCommonModel(
        providersData: List<ProvidersDatum>.from(
            json["providersData"].map((x) => ProvidersDatum.fromJson(x))),
        providingDatas: List<ProvidingData>.from(
            json["providingDatas"].map((x) => ProvidingData.fromJson(x))),
        services: List<Service>.from(
            json["services"].map((x) => Service.fromJson(x))),
        categoryList: List<CategoryList>.from(
            json["categoryList"].map((x) => CategoryList.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "providersData":
            List<dynamic>.from(providersData.map((x) => x.toJson())),
        "providingDatas":
            List<dynamic>.from(providingDatas.map((x) => x.toJson())),
        "services": List<dynamic>.from(services.map((x) => x.toJson())),
        "categoryList": List<dynamic>.from(categoryList.map((x) => x.toJson())),
      };
}

class CategoryList {
  String id;
  String categoryName;
  int v;

  CategoryList({
    required this.id,
    required this.categoryName,
    required this.v,
  });

  factory CategoryList.fromJson(Map<String, dynamic> json) => CategoryList(
        id: json["_id"],
        categoryName: json["category_name"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "category_name": categoryName,
        "__v": v,
      };
}

class ProvidersDatum {
  String id;
  String providers;
  int v;

  ProvidersDatum({
    required this.id,
    required this.providers,
    required this.v,
  });

  factory ProvidersDatum.fromJson(Map<String, dynamic> json) => ProvidersDatum(
        id: json["_id"],
        providers: json["providers"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "providers": providers,
        "__v": v,
      };
}

class ProvidingData {
  String id;
  String providing;
  int v;

  ProvidingData({
    required this.id,
    required this.providing,
    required this.v,
  });

  factory ProvidingData.fromJson(Map<String, dynamic> json) => ProvidingData(
        id: json["_id"],
        providing: json["providing"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "providing": providing,
        "__v": v,
      };
}

class Service {
  String id;
  String services;
  int v;

  Service({
    required this.id,
    required this.services,
    required this.v,
  });

  factory Service.fromJson(Map<String, dynamic> json) => Service(
        id: json["_id"],
        services: json["services"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "services": services,
        "__v": v,
      };
}
