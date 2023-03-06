// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class EnquiryCumQuatation extends Equatable {
  String? formName;
  String? ftNumber;
  String? revNumber;
  DateTime? date;
  int? siNumber;
  DateTime? EnquiryDate;
  DateTime? EnquiryRecDate;
  int? enqNumber;
  String? ModeofEnquiry;
  String? CoordinatorName;
  String? CustomerName;
  String? DescriptionofJob;
  int? EnqQty;
  String? QuoNo;
  DateTime? QuoDate;
  DateTime? QuoDueDate;
  String? ReasonQuoNotSent;
  DateTime? OrderReceivedDate;
  String? Remarks;
  EnquiryCumQuatation({
    this.formName,
    this.ftNumber,
    this.revNumber,
    this.date,
    this.EnquiryDate,
    this.siNumber,
    this.EnquiryRecDate,
    this.enqNumber,
    this.ModeofEnquiry,
    this.CoordinatorName,
    this.CustomerName,
    this.DescriptionofJob,
    this.EnqQty,
    this.QuoNo,
    this.QuoDate,
    this.QuoDueDate,
    this.ReasonQuoNotSent,
    this.OrderReceivedDate,
    this.Remarks,
  });

  @override
  List get props => [
        formName,
        ftNumber,
        revNumber,
        date,
        EnquiryDate,
        siNumber,
        EnquiryRecDate,
        enqNumber,
        ModeofEnquiry,
        CoordinatorName,
        CustomerName,
        DescriptionofJob,
        EnqQty,
        QuoNo,
        QuoDate,
        QuoDueDate,
        ReasonQuoNotSent,
        OrderReceivedDate,
        Remarks,
      ];

  EnquiryCumQuatation copyWith({
    String? formName,
    String? ftNumber,
    String? revNumber,
    DateTime? date,
    int? siNumber,
    DateTime? EnquiryDate,
    DateTime? EnquiryRecDate,
    int? enqNumber,
    String? ModeofEnquiry,
    String? CoordinatorName,
    String? CustomerName,
    String? DescriptionofJob,
    int? EnqQty,
    String? QuoNo,
    DateTime? QuoDate,
    DateTime? QuoDueDate,
    String? ReasonQuoNotSent,
    DateTime? OrderReceivedDate,
    String? Remarks,
  }) {
    return EnquiryCumQuatation(
      formName: formName ?? this.formName,
      EnquiryDate: EnquiryDate ?? this.EnquiryDate,
      ftNumber: ftNumber ?? this.ftNumber,
      revNumber: revNumber ?? this.revNumber,
      date: date ?? this.date,
      siNumber: siNumber ?? this.siNumber,
      EnquiryRecDate: EnquiryRecDate ?? this.EnquiryRecDate,
      enqNumber: enqNumber ?? this.enqNumber,
      ModeofEnquiry: ModeofEnquiry ?? this.ModeofEnquiry,
      CoordinatorName: CoordinatorName ?? this.CoordinatorName,
      CustomerName: CustomerName ?? this.CustomerName,
      DescriptionofJob: DescriptionofJob ?? this.DescriptionofJob,
      EnqQty: EnqQty ?? this.EnqQty,
      QuoNo: QuoNo ?? this.QuoNo,
      QuoDate: QuoDate ?? this.QuoDate,
      QuoDueDate: QuoDueDate ?? this.QuoDueDate,
      ReasonQuoNotSent: ReasonQuoNotSent ?? this.ReasonQuoNotSent,
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
      'siNumber': siNumber,
      'EnquiryRecDate': EnquiryRecDate?.millisecondsSinceEpoch,
      'enqNumber': enqNumber,
      'ModeofEnquiry': ModeofEnquiry,
      'CoordinatorName': CoordinatorName,
      'CustomerName': CustomerName,
      'DescriptionofJob': DescriptionofJob,
      'EnqQty': EnqQty,
      'QuoNo': QuoNo,
      'QuoDate': QuoDate?.millisecondsSinceEpoch,
      'QuoDueDate': QuoDueDate?.millisecondsSinceEpoch,
      'ReasonQuoNotSent': ReasonQuoNotSent,
      'OrderReceivedDate': OrderReceivedDate?.millisecondsSinceEpoch,
      'Remarks': Remarks,
    };
  }

  factory EnquiryCumQuatation.fromMap(Map<String, dynamic> map) {
    return EnquiryCumQuatation(
      formName: map['formName'] != null ? map['formName'] as String : null,
      ftNumber: map['ftNumber'] != null ? map['ftNumber'] as String : null,
      revNumber: map['revNumber'] != null ? map['revNumber'] as String : null,
      date: map['date'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['date'] as int)
          : null,
      siNumber: map['siNumber'] != null ? map['siNumber'] as int : null,
      EnquiryRecDate: map['EnquiryRecDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['EnquiryRecDate'] as int)
          : null,
      enqNumber: map['enqNumber'] != null ? map['enqNumber'] as int : null,
      ModeofEnquiry:
          map['ModeofEnquiry'] != null ? map['ModeofEnquiry'] as String : null,
      CoordinatorName: map['CoordinatorName'] != null
          ? map['CoordinatorName'] as String
          : null,
      CustomerName:
          map['CustomerName'] != null ? map['CustomerName'] as String : null,
      DescriptionofJob: map['DescriptionofJob'] != null
          ? map['DescriptionofJob'] as String
          : null,
      EnqQty: map['EnqQty'] != null ? map['EnqQty'] as int : null,
      QuoNo: map['QuoNo'] != null ? map['QuoNo'] as String : null,
      QuoDate: map['QuoDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['QuoDate'] as int)
          : null,
      QuoDueDate: map['QuoDueDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['QuoDueDate'] as int)
          : null,
      ReasonQuoNotSent: map['ReasonQuoNotSent'] != null
          ? map['ReasonQuoNotSent'] as String
          : null,
      OrderReceivedDate: map['OrderReceivedDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['OrderReceivedDate'] as int)
          : null,
      Remarks: map['Remarks'] != null ? map['Remarks'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory EnquiryCumQuatation.fromJson(String source) =>
      EnquiryCumQuatation.fromMap(json.decode(source) as Map<String, dynamic>);
}
