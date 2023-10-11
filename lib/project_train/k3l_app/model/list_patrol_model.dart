// To parse this JSON data, do
//
//     final listPatrolModel = listPatrolModelFromJson(jsonString);

import 'dart:convert';

ListPatrolModel listPatrolModelFromJson(String str) =>
    ListPatrolModel.fromJson(json.decode(str));

String listPatrolModelToJson(ListPatrolModel data) =>
    json.encode(data.toJson());

class ListPatrolModel {
  String code;
  String desc;
  List<DetailDataPatrol> data;

  ListPatrolModel({
    required this.code,
    required this.desc,
    required this.data,
  });

  factory ListPatrolModel.fromJson(Map<String, dynamic> json) =>
      ListPatrolModel(
        code: json["CODE"],
        desc: json["DESC"],
        data: List<DetailDataPatrol>.from(
            json["DATA"].map((x) => DetailDataPatrol.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "CODE": code,
        "DESC": desc,
        "DATA": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class DetailDataPatrol {
  String id;
  String uuid;
  String nik;
  String nama;
  String departement;
  String kategori;
  String area;
  String subArea;
  String status;
  String approvedHse;
  String? approvedHseName;
  DateTime? approvedHseDate;
  String date;
  String period;
  String year;
  String pic;
  String note;
  dynamic closeDate;
  dynamic closeName;
  dynamic noteClose;
  String? noteHse;
  String? notePic;
  String? picName;
  DateTime? picProcessDate;
  dynamic noteCorrection;
  String numberPatrol;
  String? levelPatrol;
  String? point;
  List<FileElement> file;

  DetailDataPatrol({
    required this.id,
    required this.uuid,
    required this.nik,
    required this.nama,
    required this.departement,
    required this.kategori,
    required this.area,
    required this.subArea,
    required this.status,
    required this.approvedHse,
    required this.approvedHseName,
    required this.approvedHseDate,
    required this.date,
    required this.period,
    required this.year,
    required this.pic,
    required this.note,
    required this.closeDate,
    required this.closeName,
    required this.noteClose,
    required this.noteHse,
    required this.notePic,
    required this.picName,
    required this.picProcessDate,
    required this.noteCorrection,
    required this.numberPatrol,
    required this.levelPatrol,
    required this.point,
    required this.file,
  });

  factory DetailDataPatrol.fromJson(Map<String, dynamic> json) =>
      DetailDataPatrol(
        id: json["id"],
        uuid: json["UUID"],
        nik: json["NIK"],
        nama: json["NAMA"],
        departement: json["DEPARTEMENT"],
        kategori: json["KATEGORI"],
        area: json["AREA"],
        subArea: json["SUB_AREA"],
        status: json["STATUS"],
        approvedHse: json["APPROVED_HSE"],
        approvedHseName: json["APPROVED_HSE_NAME"],
        approvedHseDate: json["APPROVED_HSE_DATE"] == null
            ? null
            : DateTime.parse(json["APPROVED_HSE_DATE"]),
        date: json["DATE"],
        period: json["PERIOD"],
        year: json["YEAR"],
        pic: json["PIC"],
        note: json["NOTE"],
        closeDate: json["CLOSE_DATE"],
        closeName: json["CLOSE_NAME"],
        noteClose: json["NOTE_CLOSE"],
        noteHse: json["NOTE_HSE"],
        notePic: json["NOTE_PIC"],
        picName: json["PIC_NAME"],
        picProcessDate: json["PIC_PROCESS_DATE"] == null
            ? null
            : DateTime.parse(json["PIC_PROCESS_DATE"]),
        noteCorrection: json["NOTE_CORRECTION"],
        numberPatrol: json["NUMBER_PATROL"],
        levelPatrol: json["LEVEL_PATROL"],
        point: json["POINT"],
        file: List<FileElement>.from(
            json["FILE"].map((x) => FileElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "UUID": uuid,
        "NIK": nik,
        "NAMA": nama,
        "DEPARTEMENT": departement,
        "KATEGORI": kategori,
        "AREA": area,
        "SUB_AREA": subArea,
        "STATUS": status,
        "APPROVED_HSE": approvedHse,
        "APPROVED_HSE_NAME": approvedHseName,
        "APPROVED_HSE_DATE": approvedHseDate?.toIso8601String(),
        "DATE": date,
        "PERIOD": period,
        "YEAR": year,
        "PIC": pic,
        "NOTE": note,
        "CLOSE_DATE": closeDate,
        "CLOSE_NAME": closeName,
        "NOTE_CLOSE": noteClose,
        "NOTE_HSE": noteHse,
        "NOTE_PIC": notePic,
        "PIC_NAME": picName,
        "PIC_PROCESS_DATE": picProcessDate?.toIso8601String(),
        "NOTE_CORRECTION": noteCorrection,
        "NUMBER_PATROL": numberPatrol,
        "LEVEL_PATROL": levelPatrol,
        "POINT": point,
        "FILE": List<dynamic>.from(file.map((x) => x.toJson())),
      };
}

class FileElement {
  Type type;
  String image;

  FileElement({
    required this.type,
    required this.image,
  });

  factory FileElement.fromJson(Map<String, dynamic> json) => FileElement(
        type: typeValues.map[json["type"]]!,
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "image": image,
      };
}

enum Type { PIC, REPORTER }

final typeValues = EnumValues({"PIC": Type.PIC, "REPORTER": Type.REPORTER});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
