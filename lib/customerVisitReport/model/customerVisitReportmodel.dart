// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:formapp/main.dart';

class CustomerVisitReport extends Equatable {
  String? formName;
  String? ftNumber;
  String? revNumber;
  DateTime? date;
  AddressBook? address;
  String? name;
  String? coordinator;
  bool? enquiry;
  bool? approval;
  bool? order;
  bool? audit;
  String? customerVisitDetails;

  String? feedback;
  String? remarks;
  DateTime? OrderReceivedDate;

  CustomerVisitReport({
    this.formName,
    this.ftNumber,
    this.revNumber,
    this.date,
    this.address,
    this.name,
    this.coordinator,
    this.enquiry,
    this.approval,
    this.order,
    this.audit,
    this.customerVisitDetails,
    this.feedback,
    this.remarks,
    this.OrderReceivedDate,
  });

  @override
  List get props => [
        formName,
        ftNumber,
        revNumber,
        date,
        address,
        coordinator,
        name,
        enquiry,
        approval,
        order,
        audit,
        customerVisitDetails,
        feedback,
        remarks,
        OrderReceivedDate,
      ];

  CustomerVisitReport copyWith({
    String? formName,
    String? ftNumber,
    String? revNumber,
    DateTime? date,
    AddressBook? address,
    String? coordinator,
    String? name,
    bool? enquiry,
    bool? approval,
    bool? order,
    bool? audit,
    String? customerVisitDetails,
    String? feedback,
    String? remarks,
    DateTime? OrderReceivedDate,
  }) {
    return CustomerVisitReport(
      formName: formName ?? this.formName,
      ftNumber: ftNumber ?? this.ftNumber,
      revNumber: revNumber ?? this.revNumber,
      date: date ?? this.date,
      address: address ?? this.address,
      coordinator: coordinator ?? this.coordinator,
      name: name ?? this.name,
      enquiry: enquiry ?? this.enquiry,
      approval: approval ?? this.approval,
      order: order ?? this.order,
      audit: audit ?? this.audit,
      customerVisitDetails: customerVisitDetails ?? this.customerVisitDetails,
      feedback: feedback ?? this.feedback,
      remarks: remarks ?? this.remarks,
      OrderReceivedDate: OrderReceivedDate ?? this.OrderReceivedDate,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'formName': formName,
      'ftNumber': ftNumber,
      'revNumber': revNumber,
      'date': date?.millisecondsSinceEpoch,
      'address': address,
      'coordinator': coordinator,
      'enquiry': enquiry,
      'approval': approval,
      'order': order,
      'audit': audit,
      'customerVisitDetails': customerVisitDetails,
      'feedback': feedback,
      'remarks': remarks,
      'OrderReceivedDate': OrderReceivedDate?.millisecondsSinceEpoch,
    };
  }

  factory CustomerVisitReport.fromMap(Map<String, dynamic> map) {
    return CustomerVisitReport(
      formName: map['formName'] != null ? map['formName'] as String : null,
      ftNumber: map['ftNumber'] != null ? map['ftNumber'] as String : null,
      revNumber: map['revNumber'] != null ? map['revNumber'] as String : null,
      date: map['date'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['date'] as int)
          : null,
      address: map['address'],
      coordinator:
          map['coordinator'] != null ? map['coordinator'] as String : null,
      enquiry: map['enquiry'] != null ? map['enquiry'] as bool : null,
      approval: map['approval'] != null ? map['approval'] as bool : null,
      order: map['order'] != null ? map['order'] as bool : null,
      audit: map['audit'] != null ? map['audit'] as bool : null,
      customerVisitDetails: map['customerVisitDetails'] != null
          ? map['customerVisitDetails'] as String
          : null,
      feedback: map['feedback'] != null ? map['feedback'] as String : null,
      remarks: map['remarks'] != null ? map['remarks'] as String : null,
      OrderReceivedDate: map['OrderReceivedDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['OrderReceivedDate'] as int)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CustomerVisitReport.fromJson(String source) =>
      CustomerVisitReport.fromMap(json.decode(source) as Map<String, dynamic>);
}
