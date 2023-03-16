// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class IssueAndReturnRegisterModel extends Equatable {
  String? ftNumber;
  String? revNumber;
  DateTime? date;
  String? pageNumber;
  String? slNumber;
  String? materialDescription;
  String? itemId;
  DateTime? issueDate;
  int? issueQuantity;
  String? issueTo;
  DateTime? returnDate;
  int? returnQuantity;
  String? returnBy;
  String? employeeId;
  String? remarks;
  IssueAndReturnRegisterModel({
    this.ftNumber,
    this.revNumber,
    this.date,
    this.pageNumber,
    this.slNumber,
    this.materialDescription,
    this.itemId,
    this.issueDate,
    this.issueQuantity,
    this.issueTo,
    this.returnDate,
    this.returnQuantity,
    this.returnBy,
    this.employeeId,
    this.remarks,
  });

  @override
  List<Object?> get props => [
        ftNumber,
        revNumber,
        date,
        pageNumber,
        slNumber,
        materialDescription,
        itemId,
        issueDate,
        issueQuantity,
        issueTo,
        returnDate,
        returnQuantity,
        returnBy,
        employeeId,
        remarks
      ];

  IssueAndReturnRegisterModel copyWith({
    String? ftNumber,
    String? revNumber,
    DateTime? date,
    String? pageNumber,
    String? slNumber,
    String? materialDescription,
    String? itemId,
    DateTime? issueDate,
    int? issueQuantity,
    String? issueTo,
    DateTime? returnDate,
    int? returnQuantity,
    String? returnBy,
    String? employeeId,
    String? remarks,
  }) {
    return IssueAndReturnRegisterModel(
      ftNumber: ftNumber ?? this.ftNumber,
      revNumber: revNumber ?? this.revNumber,
      date: date ?? this.date,
      pageNumber: pageNumber ?? this.pageNumber,
      slNumber: slNumber ?? this.slNumber,
      materialDescription: materialDescription ?? this.materialDescription,
      itemId: itemId ?? this.itemId,
      issueDate: issueDate ?? this.issueDate,
      issueQuantity: issueQuantity ?? this.issueQuantity,
      issueTo: issueTo ?? this.issueTo,
      returnDate: returnDate ?? this.returnDate,
      returnQuantity: returnQuantity ?? this.returnQuantity,
      returnBy: returnBy ?? this.returnBy,
      employeeId: employeeId ?? this.employeeId,
      remarks: remarks ?? this.remarks,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ftNumber': ftNumber,
      'revNumber': revNumber,
      'date': date?.millisecondsSinceEpoch,
      'pageNumber': pageNumber,
      'slNumber': slNumber,
      'materialDescription': materialDescription,
      'itemId': itemId,
      'issueDate': issueDate?.millisecondsSinceEpoch,
      'issueQuantity': issueQuantity,
      'issueTo': issueTo,
      'returnDate': returnDate?.millisecondsSinceEpoch,
      'returnQuantity': returnQuantity,
      'returnBy': returnBy,
      'employeeId': employeeId,
      'remarks': remarks,
    };
  }

  factory IssueAndReturnRegisterModel.fromMap(Map<String, dynamic> map) {
    return IssueAndReturnRegisterModel(
      ftNumber: map['ftNumber'] != null ? map['ftNumber'] as String : null,
      revNumber: map['revNumber'] != null ? map['revNumber'] as String : null,
      date: map['date'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['date'] as int)
          : null,
      pageNumber:
          map['pageNumber'] != null ? map['pageNumber'] as String : null,
      slNumber: map['slNumber'] != null ? map['slNumber'] as String : null,
      materialDescription: map['materialDescription'] != null
          ? map['materialDescription'] as String
          : null,
      itemId: map['itemId'] != null ? map['itemId'] as String : null,
      issueDate: map['issueDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['issueDate'] as int)
          : null,
      issueQuantity:
          map['issueQuantity'] != null ? map['issueQuantity'] as int : null,
      issueTo: map['issueTo'] != null ? map['issueTo'] as String : null,
      returnDate: map['returnDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['returnDate'] as int)
          : null,
      returnQuantity:
          map['returnQuantity'] != null ? map['returnQuantity'] as int : null,
      returnBy: map['returnBy'] != null ? map['returnBy'] as String : null,
      employeeId:
          map['employeeId'] != null ? map['employeeId'] as String : null,
      remarks: map['remarks'] != null ? map['remarks'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory IssueAndReturnRegisterModel.fromJson(String source) =>
      IssueAndReturnRegisterModel.fromMap(
          json.decode(source) as Map<String, dynamic>);
}
