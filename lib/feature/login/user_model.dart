// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

class User {
  User({
    this.userId,
    this.transactionCode,
    this.phoneNumber,
    this.userPassword,
    this.firstName,
    this.lastName,
    this.fullName,
    this.userGroupId,
    this.userStatusId,
    this.deleted,
    this.createdBy,
    this.createdDate,
    this.modifiedBy,
    this.modifiedDate,
  });

  int? userId;
  String? transactionCode;
  String? phoneNumber;
  String? userPassword;
  String? firstName;
  String? lastName;
  String? fullName;
  int? userGroupId;
  int? userStatusId;
  int? deleted;
  int? createdBy;
  DateTime? createdDate;
  int? modifiedBy;
  DateTime? modifiedDate;

  factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory User.fromJson(Map<String, dynamic> json) => User(
        userId: json["UserID"],
        transactionCode: json["TransactionCode"],
        phoneNumber: json["PhoneNumber"],
        userPassword: json["UserPassword"],
        firstName: json["FirstName"],
        lastName: json["LastName"],
        fullName: json["FullName"],
        userGroupId: json["UserGroupID"],
        userStatusId: json["UserStatusID"],
        deleted: json["Deleted"],
        createdBy: json["CreatedBy"],
        createdDate: json["CreatedDate"] == null ? json["CreatedDate"] : null,
        modifiedBy: json["ModifiedBy"],
        modifiedDate:
            json["ModifiedDate"] == null ? json["ModifiedDate"] : null,
      );

  Map<String, dynamic> toJson() => {
        "UserID": userId,
        "TransactionCode": transactionCode,
        "PhoneNumber": phoneNumber,
        "UserPassword": userPassword,
        "FirstName": firstName,
        "LastName": lastName,
        "FullName": fullName,
        "UserGroupID": userGroupId,
        "UserStatusID": userStatusId,
        "Deleted": deleted,
        "CreatedBy": createdBy,
        "CreatedDate": createdDate,
        "ModifiedBy": modifiedBy,
        "ModifiedDate": modifiedDate,
      };
}
