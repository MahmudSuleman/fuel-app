import 'dart:convert';

class SaleModel {
  SaleModel({
    this.salesId,
    this.salesCode,
    this.salesDate,
    this.siteId,
    this.details,
    this.accountId,
    this.amount,
    this.createdBy,
    this.createdDate,
    this.modifiedBy,
    this.modifiedDate,
    this.deleted,
    this.deletedBy,
    this.deletedDate,
  });

  int? salesId;
  String? salesCode;
  DateTime? salesDate;
  int? siteId;
  String? details;
  int? accountId;
  double? amount;
  int? createdBy;
  DateTime? createdDate;
  DateTime? modifiedBy;
  DateTime? modifiedDate;
  int? deleted;
  DateTime? deletedBy;
  DateTime? deletedDate;

  factory SaleModel.fromRawJson(String str) =>
      SaleModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SaleModel.fromJson(Map<String, dynamic> json) => SaleModel(
        salesId: json["SalesID"],
        salesCode: json["SalesCode"],
        salesDate: json["SalesDate"] != null
            ? DateTime.parse(json["SalesDate"])
            : null,
        siteId: json["SiteID"],
        details: json["Details"],
        accountId: json["AccountID"],
        amount: json["Amount"],
        createdBy: json["CreatedBy"],
        createdDate: json["CreatedDate"] != null
            ? DateTime.parse(json["CreatedDate"])
            : null,
        modifiedBy: json["ModifiedBy"] != null
            ? DateTime.parse(json["ModifiedBy"])
            : null,
        modifiedDate: json["ModifiedDate"] != null
            ? DateTime.parse(json["ModifiedDate"])
            : null,
        deleted: json["Deleted"],
        deletedBy: json["DeletedBy"],
        deletedDate: json["DeletedDate"] != null
            ? DateTime.parse(json["DeletedDate"])
            : null,
      );

  Map<String, dynamic> toJson() => {
        "SalesID": salesId,
        "SalesCode": salesCode,
        "SalesDate": salesDate,
        "SiteID": siteId,
        "Details": details,
        "AccountID": accountId,
        "Amount": amount,
        "CreatedBy": createdBy,
        "CreatedDate": createdDate,
        "ModifiedBy": modifiedBy,
        "ModifiedDate": modifiedDate,
        "Deleted": deleted,
        "DeletedBy": deletedBy,
        "DeletedDate": deletedDate,
      };

  SaleModel copyWith({
    int? salesId,
    String? salesCode,
    DateTime? salesDate,
    int? siteId,
    String? details,
    int? accountId,
    double? amount,
    int? createdBy,
    DateTime? createdDate,
    DateTime? modifiedBy,
    DateTime? modifiedDate,
    int? deleted,
    DateTime? deletedBy,
    DateTime? deletedDate,
  }) =>
      SaleModel(
        salesId: salesId ?? this.salesId,
        salesCode: salesCode ?? this.salesCode,
        salesDate: salesDate ?? this.salesDate,
        siteId: siteId ?? this.siteId,
        details: details ?? this.details,
        accountId: accountId ?? this.accountId,
        amount: amount ?? this.amount,
        createdBy: createdBy ?? this.createdBy,
        createdDate: createdDate ?? this.createdDate,
        modifiedBy: modifiedBy ?? this.modifiedBy,
        modifiedDate: modifiedDate ?? this.modifiedDate,
        deleted: deleted ?? this.deleted,
        deletedBy: deletedBy ?? this.deletedBy,
        deletedDate: deletedDate ?? this.deletedDate,
      );

  static List<SaleModel> data = [
    SaleModel(
      salesId: 1,
      salesDate: DateTime.parse('Dec 12 2020'),
      details: 'Some details',
      accountId: 1,
      amount: 200,
    ),
  ];
}
