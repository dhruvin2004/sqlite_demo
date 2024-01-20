// To parse this JSON data, do
//
//     final dataModal = dataModalFromJson(jsonString);

import 'dart:convert';

DataModal dataModalFromJson(String str) => DataModal.fromJson(json.decode(str));

String dataModalToJson(DataModal data) => json.encode(data.toJson());

class DataModal {
  int? page;
  int? perPage;
  int? total;
  int? totalPages;
  List<ListData>? data;
  Support? support;

  DataModal({
    this.page,
    this.perPage,
    this.total,
    this.totalPages,
    this.data,
    this.support,
  });

  factory DataModal.fromJson(Map<String, dynamic> json) => DataModal(
    page: json["page"],
    perPage: json["per_page"],
    total: json["total"],
    totalPages: json["total_pages"],
    data: json["data"] == null ? [] : List<ListData>.from(json["data"]!.map((x) => ListData.fromJson(x))),
    support: json["support"] == null ? null : Support.fromJson(json["support"]),
  );

  Map<String, dynamic> toJson() => {
    "page": page,
    "per_page": perPage,
    "total": total,
    "total_pages": totalPages,
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    "support": support?.toJson(),
  };
}

class ListData {
  int? id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;

  ListData({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.avatar,
  });

  factory ListData.fromJson(Map<String, dynamic> json) => ListData(
    id: json["id"],
    email: json["email"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    avatar: json["avatar"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "email": email,
    "first_name": firstName,
    "last_name": lastName,
    "avatar": avatar,
  };
}

class Support {
  String? url;
  String? text;

  Support({
    this.url,
    this.text,
  });

  factory Support.fromJson(Map<String, dynamic> json) => Support(
    url: json["url"],
    text: json["text"],
  );

  Map<String, dynamic> toJson() => {
    "url": url,
    "text": text,
  };
}
