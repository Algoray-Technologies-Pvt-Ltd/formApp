// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:formapp/main.dart';

class MarketingVisitReport extends Equatable {
  String? formName;
  String? ftNumber;
  String? revNumber;
  DateTime? date;
  AddressBook? address;
  String? personMeet;
  bool? enquiry;
  bool? negotation;
  bool? order;
  bool? amendment;
  bool? paymentCollection;

  String? detailsMeeting;
  String? followupDetails;

  String? Remarks;
  MarketingVisitReport({
    this.formName,
    this.ftNumber,
    this.revNumber,
    this.date,
    this.address,
    this.personMeet,
    this.enquiry,
    this.negotation,
    this.order,
    this.amendment,
    this.paymentCollection,
    this.detailsMeeting,
    this.followupDetails,

    this.Remarks,
  });

  @override
  // TODO: implement props
  List get props => [
        formName,
        ftNumber,
        revNumber,
        date,
        address,
        personMeet,
        enquiry,
        negotation,
        order,
        amendment,
        paymentCollection,
        detailsMeeting,
        followupDetails,

        Remarks,
      ];

  MarketingVisitReport copyWith({
    String? formName,
    String? ftNumber,
    String? revNumber,
    DateTime? date,
    AddressBook? address,
    String? personMeet,
    bool? enquiry,
    bool? negotation,
    bool? order,
    bool? amendment,
    bool? paymentCollection,
    String? detailsMeeting,
    String? followupDetails,
    String? remarks,

    String? Remarks,
  }) {
    return MarketingVisitReport(
      formName: formName ?? this.formName,
      ftNumber: ftNumber ?? this.ftNumber,
      revNumber: revNumber ?? this.revNumber,
      date: date ?? this.date,
      address: address ?? this.address,
      personMeet: personMeet ?? this.personMeet,
      enquiry: enquiry ?? this.enquiry,
      negotation: negotation ?? this.negotation,
      order: order ?? this.order,
      amendment: amendment ?? this.amendment,
      paymentCollection: paymentCollection ?? this.paymentCollection,
      detailsMeeting: detailsMeeting ?? this.detailsMeeting,
      followupDetails: followupDetails ?? this.followupDetails,

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
      'personMeet': personMeet,
      'enquiry': enquiry,
      'negotation': negotation,
      'order': order,
      'amendment': amendment,
      'paymentCollection': paymentCollection,
      'detailsMeeting': detailsMeeting,
      'followupDetails': followupDetails,

      'Remarks': Remarks,
    };
  }

  factory MarketingVisitReport.fromMap(Map<String, dynamic> map) {
    return MarketingVisitReport(
      formName: map['formName'] != null ? map['formName'] as String : null,
      ftNumber: map['ftNumber'] != null ? map['ftNumber'] as String : null,
      revNumber: map['revNumber'] != null ? map['revNumber'] as String : null,
      date: map['date'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['date'] as int)
          : null,
      address: map['address'],
      personMeet:
          map['personMeet'] != null ? map['personMeet'] as String : null,
      enquiry: map['enquiry'] != null ? map['enquiry'] as bool : null,
      negotation: map['negotation'] != null ? map['negotation'] as bool : null,
      order: map['order'] != null ? map['order'] as bool : null,
      amendment: map['amendment'] != null ? map['amendment'] as bool : null,
      paymentCollection: map['paymentCollection'] != null
          ? map['paymentCollection'] as bool
          : null,
      detailsMeeting: map['detailsMeeting'] != null
          ? map['detailsMeeting'] as String
          : null,
      followupDetails: map['followupDetails'] != null
          ? map['followupDetails'] as String
          : null,

      Remarks: map['Remarks'] != null ? map['Remarks'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MarketingVisitReport.fromJson(String source) =>
      MarketingVisitReport.fromMap(json.decode(source) as Map<String, dynamic>);
}
