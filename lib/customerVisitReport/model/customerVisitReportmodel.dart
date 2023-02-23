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

  String? coordinator;
  bool? enquiry;
  bool? approval;
  bool? order;
  bool? amendment;
  String? customerVisitDetails;

  String? feedback;
  String? remarks;
  DateTime? OrderReceivedDate;
  String? Remarks;
  CustomerVisitReport({
    this.formName,
    this.ftNumber,
    this.revNumber,
    this.date,
    this.address,
    this.coordinator,
    this.enquiry,
    this.approval,
    this.order,
    this.amendment,
    this.customerVisitDetails,
    this.feedback,
    this.remarks,
    this.OrderReceivedDate,
    this.Remarks,
  });

  CustomerVisitReport copyWith({
    String? formName,
    String? ftNumber,
    String? revNumber,
    DateTime? date,
    AddressBook? address,
    String? coordinator,
    bool? enquiry,
    bool? approval,
    bool? order,
    bool? amendment,
    String? customerVisitDetails,
    String? feedback,
    String? remarks,
    DateTime? OrderReceivedDate,
    String? Remarks,
  }) {
    return CustomerVisitReport(
      formName: formName ?? this.formName,
      ftNumber: ftNumber ?? this.ftNumber,
      revNumber: revNumber ?? this.revNumber,
      date: date ?? this.date,
      address: address ?? this.address,
      coordinator: coordinator ?? this.coordinator,
      enquiry: enquiry ?? this.enquiry,
      approval: approval ?? this.approval,
      order: order ?? this.order,
      amendment: amendment ?? this.amendment,
      customerVisitDetails: customerVisitDetails ?? this.customerVisitDetails,
      feedback: feedback ?? this.feedback,
      remarks: remarks ?? this.remarks,
      OrderReceivedDate: OrderReceivedDate ?? this.OrderReceivedDate,
      Remarks: Remarks ?? this.Remarks,
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
      'amendment': amendment,
      'customerVisitDetails': customerVisitDetails,
      'feedback': feedback,
      'remarks': remarks,
      'OrderReceivedDate': OrderReceivedDate,
      'Remarks': Remarks,
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
      amendment: map['amendment'] != null ? map['amendment'] as bool : null,
      customerVisitDetails: map['customerVisitDetails'] != null
          ? map['customerVisitDetails'] as String
          : null,
      feedback: map['feedback'] != null ? map['feedback'] as String : null,
      remarks: map['remarks'] != null ? map['remarks'] as String : null,
      OrderReceivedDate: map['OrderReceivedDate'],
      Remarks: map['Remarks'] != null ? map['Remarks'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CustomerVisitReport.fromJson(String source) =>
      CustomerVisitReport.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  List get props => [
        formName,
        ftNumber,
        revNumber,
        date,
        address,
        coordinator,
        enquiry,
        approval,
        order,
        amendment,
        customerVisitDetails,
        feedback,
        remarks,
        OrderReceivedDate,
        Remarks,
      ];
}
