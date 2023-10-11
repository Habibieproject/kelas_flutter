// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) =>
    LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  String code;
  String desc;
  Data data;

  LoginModel({
    required this.code,
    required this.desc,
    required this.data,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        code: json["CODE"],
        desc: json["DESC"],
        data: Data.fromJson(json["DATA"]),
      );

  Map<String, dynamic> toJson() => {
        "CODE": code,
        "DESC": desc,
        "DATA": data.toJson(),
      };
}

class Data {
  The0 the0;
  String picFlag;

  Data({
    required this.the0,
    required this.picFlag,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        the0: The0.fromJson(json["0"]),
        picFlag: json["PIC_FLAG"],
      );

  Map<String, dynamic> toJson() => {
        "0": the0.toJson(),
        "PIC_FLAG": picFlag,
      };
}

class The0 {
  int id;
  String username;
  String password;
  String role;
  String nameFirst;
  String nameLast;
  String title;
  String birth;
  String initial;
  String plant;
  String wcGroup;
  String wcId;
  dynamic userSap;
  dynamic userLevel;
  dynamic userAccess;
  dynamic customer;
  dynamic groupEmail;
  dynamic rememberToken;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic opco;
  String avatar;
  dynamic country;
  dynamic interest;
  dynamic hoby;
  dynamic description;
  String email;
  String phoneNumber;
  dynamic group;
  String departement;
  dynamic menuFocusAudit;
  dynamic menuFocusAuditOffset;
  dynamic roleKmap;

  The0({
    required this.id,
    required this.username,
    required this.password,
    required this.role,
    required this.nameFirst,
    required this.nameLast,
    required this.title,
    required this.birth,
    required this.initial,
    required this.plant,
    required this.wcGroup,
    required this.wcId,
    required this.userSap,
    required this.userLevel,
    required this.userAccess,
    required this.customer,
    required this.groupEmail,
    required this.rememberToken,
    required this.createdAt,
    required this.updatedAt,
    required this.opco,
    required this.avatar,
    required this.country,
    required this.interest,
    required this.hoby,
    required this.description,
    required this.email,
    required this.phoneNumber,
    required this.group,
    required this.departement,
    required this.menuFocusAudit,
    required this.menuFocusAuditOffset,
    required this.roleKmap,
  });

  factory The0.fromJson(Map<String, dynamic> json) => The0(
        id: json["id"],
        username: json["username"],
        password: json["password"],
        role: json["role"],
        nameFirst: json["name_first"],
        nameLast: json["name_last"],
        title: json["title"],
        birth: json["birth"],
        initial: json["initial"],
        plant: json["plant"],
        wcGroup: json["wc_group"],
        wcId: json["wc_id"],
        userSap: json["user_sap"],
        userLevel: json["user_level"],
        userAccess: json["user_access"],
        customer: json["customer"],
        groupEmail: json["group_email"],
        rememberToken: json["remember_token"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        opco: json["opco"],
        avatar: json["avatar"],
        country: json["country"],
        interest: json["interest"],
        hoby: json["hoby"],
        description: json["description"],
        email: json["email"],
        phoneNumber: json["phone_number"],
        group: json["group"],
        departement: json["departement"],
        menuFocusAudit: json["menu_focus_audit"],
        menuFocusAuditOffset: json["menu_focus_audit_offset"],
        roleKmap: json["role_kmap"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "password": password,
        "role": role,
        "name_first": nameFirst,
        "name_last": nameLast,
        "title": title,
        "birth": birth,
        "initial": initial,
        "plant": plant,
        "wc_group": wcGroup,
        "wc_id": wcId,
        "user_sap": userSap,
        "user_level": userLevel,
        "user_access": userAccess,
        "customer": customer,
        "group_email": groupEmail,
        "remember_token": rememberToken,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "opco": opco,
        "avatar": avatar,
        "country": country,
        "interest": interest,
        "hoby": hoby,
        "description": description,
        "email": email,
        "phone_number": phoneNumber,
        "group": group,
        "departement": departement,
        "menu_focus_audit": menuFocusAudit,
        "menu_focus_audit_offset": menuFocusAuditOffset,
        "role_kmap": roleKmap,
      };
}
