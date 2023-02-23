// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:formapp/main.dart';

class ContractReview extends Equatable {
  String? formName;
  String? ftNumber;
  String? revNumber;
  DateTime? date;
  AddressBook? address;
  DateTime? POrecDate;
  int? enquiryNo;
  DateTime? enquiryDate;
  bool? productDescription;
  bool? Qty;
  DateTime? poDueDate;
  bool? TermsConditions;
  String? Material;
  String? MaterialSpecification;
  String? Payment;
  bool? ThirdPartyInspection;
  bool? AnySpecialRequirements;
  String? Transport;
  bool? Insurance;
  int? AcknowledgementNo;
  DateTime? AcknowledgementDate;
  String? ReviewedBy;
  DateTime? ReviewedDate;
  String? ApprovelBy;
  DateTime? ApprovelDate;
  bool? Amandmentifany;
  DateTime? AmandmentDate;
  String? DetailsofAmandment;
  String? AmandmentReviewBy;
  DateTime? AmandmentReviewDate;
  String? AmandmentApprovedBy;
  DateTime? AmandmentApprovedDate;
  ContractReview({
    this.formName,
    this.ftNumber,
    this.revNumber,
    this.date,
    this.address,
    this.POrecDate,
    this.enquiryNo,
    this.enquiryDate,
    this.productDescription,
    this.Qty,
    this.poDueDate,
    this.TermsConditions,
    this.Material,
    this.MaterialSpecification,
    this.Payment,
    this.ThirdPartyInspection,
    this.AnySpecialRequirements,
    this.Transport,
    this.Insurance,
    this.AcknowledgementNo,
    this.AcknowledgementDate,
    this.ReviewedBy,
    this.ReviewedDate,
    this.ApprovelBy,
    this.ApprovelDate,
    this.Amandmentifany,
    this.AmandmentDate,
    this.DetailsofAmandment,
    this.AmandmentReviewBy,
    this.AmandmentReviewDate,
    this.AmandmentApprovedBy,
    this.AmandmentApprovedDate,
  });

  ContractReview copyWith({
    String? formName,
    String? ftNumber,
    String? revNumber,
    DateTime? date,
    AddressBook? address,
    DateTime? POrecDate,
    int? enquiryNo,
    DateTime? enquiryDate,
    bool? productDescription,
    bool? Qty,
    DateTime? poDueDate,
    bool? TermsConditions,
    String? Material,
    String? MaterialSpecification,
    String? Payment,
    bool? ThirdPartyInspection,
    bool? AnySpecialRequirements,
    String? Transport,
    bool? Insurance,
    int? AcknowledgementNo,
    DateTime? AcknowledgementDate,
    String? ReviewedBy,
    DateTime? ReviewedDate,
    String? ApprovelBy,
    DateTime? ApprovelDate,
    bool? Amandmentifany,
    DateTime? AmandmentDate,
    String? DetailsofAmandment,
    String? AmandmentReviewBy,
    DateTime? AmandmentReviewDate,
    String? AmandmentApprovedBy,
    DateTime? AmandmentApprovedDate,
  }) {
    return ContractReview(
      formName: formName ?? this.formName,
      ftNumber: ftNumber ?? this.ftNumber,
      revNumber: revNumber ?? this.revNumber,
      date: date ?? this.date,
      address: address ?? this.address,
      POrecDate: POrecDate ?? this.POrecDate,
      enquiryNo: enquiryNo ?? this.enquiryNo,
      enquiryDate: enquiryDate ?? this.enquiryDate,
      productDescription: productDescription ?? this.productDescription,
      Qty: Qty ?? this.Qty,
      poDueDate: poDueDate ?? this.poDueDate,
      TermsConditions: TermsConditions ?? this.TermsConditions,
      Material: Material ?? this.Material,
      MaterialSpecification:
          MaterialSpecification ?? this.MaterialSpecification,
      Payment: Payment ?? this.Payment,
      ThirdPartyInspection: ThirdPartyInspection ?? this.ThirdPartyInspection,
      AnySpecialRequirements:
          AnySpecialRequirements ?? this.AnySpecialRequirements,
      Transport: Transport ?? this.Transport,
      Insurance: Insurance ?? this.Insurance,
      AcknowledgementNo: AcknowledgementNo ?? this.AcknowledgementNo,
      AcknowledgementDate: AcknowledgementDate ?? this.AcknowledgementDate,
      ReviewedBy: ReviewedBy ?? this.ReviewedBy,
      ReviewedDate: ReviewedDate ?? this.ReviewedDate,
      ApprovelBy: ApprovelBy ?? this.ApprovelBy,
      ApprovelDate: ApprovelDate ?? this.ApprovelDate,
      Amandmentifany: Amandmentifany ?? this.Amandmentifany,
      AmandmentDate: AmandmentDate ?? this.AmandmentDate,
      DetailsofAmandment: DetailsofAmandment ?? this.DetailsofAmandment,
      AmandmentReviewBy: AmandmentReviewBy ?? this.AmandmentReviewBy,
      AmandmentReviewDate: AmandmentReviewDate ?? this.AmandmentReviewDate,
      AmandmentApprovedBy: AmandmentApprovedBy ?? this.AmandmentApprovedBy,
      AmandmentApprovedDate:
          AmandmentApprovedDate ?? this.AmandmentApprovedDate,
    );
  }

  @override
  List get props => [
        formName,
        ftNumber,
        revNumber,
        date,
        address,
        POrecDate,
        enquiryNo,
        enquiryDate,
        productDescription,
        Qty,
        poDueDate,
        TermsConditions,
        Material,
        MaterialSpecification,
        Payment,
        ThirdPartyInspection,
        AnySpecialRequirements,
        Transport,
        Insurance,
        AcknowledgementNo,
        AcknowledgementDate,
        ReviewedBy,
        ReviewedDate,
        ApprovelBy,
        ApprovelDate,
        Amandmentifany,
        AmandmentDate,
        DetailsofAmandment,
        AmandmentReviewBy,
        AmandmentReviewDate,
        AmandmentApprovedBy,
        AmandmentApprovedDate
      ];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'formName': formName,
      'ftNumber': ftNumber,
      'revNumber': revNumber,
      'date': date?.millisecondsSinceEpoch,
      'address': address,
      'POrecDate': POrecDate?.millisecondsSinceEpoch,
      'enquiryNo': enquiryNo,
      'enquiryDate': enquiryDate?.millisecondsSinceEpoch,
      'productDescription': productDescription,
      'Qty': Qty,
      'poDueDate': poDueDate?.millisecondsSinceEpoch,
      'TermsConditions': TermsConditions,
      'Material': Material,
      'MaterialSpecification': MaterialSpecification,
      'Payment': Payment,
      'ThirdPartyInspection': ThirdPartyInspection,
      'AnySpecialRequirements': AnySpecialRequirements,
      'Transport': Transport,
      'Insurance': Insurance,
      'AcknowledgementNo': AcknowledgementNo,
      'AcknowledgementDate': AcknowledgementDate?.millisecondsSinceEpoch,
      'ReviewedBy': ReviewedBy,
      'ReviewedDate': ReviewedDate?.millisecondsSinceEpoch,
      'ApprovelBy': ApprovelBy,
      'ApprovelDate': ApprovelDate?.millisecondsSinceEpoch,
      'Amandmentifany': Amandmentifany,
      'AmandmentDate': AmandmentDate?.millisecondsSinceEpoch,
      'DetailsofAmandment': DetailsofAmandment,
      'AmandmentReviewBy': AmandmentReviewBy,
      'AmandmentReviewDate': AmandmentReviewDate?.millisecondsSinceEpoch,
      'AmandmentApprovedBy': AmandmentApprovedBy,
      'AmandmentApprovedDate': AmandmentApprovedDate?.millisecondsSinceEpoch,
    };
  }

  factory ContractReview.fromMap(Map<String, dynamic> map) {
    return ContractReview(
      formName: map['formName'] != null ? map['formName'] as String : null,
      ftNumber: map['ftNumber'] != null ? map['ftNumber'] as String : null,
      revNumber: map['revNumber'] != null ? map['revNumber'] as String : null,
      date: map['date'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['date'] as int)
          : null,
      address: map['address'],
      POrecDate: map['POrecDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['POrecDate'] as int)
          : null,
      enquiryNo: map['enquiryNo'] != null ? map['enquiryNo'] as int : null,
      enquiryDate: map['enquiryDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['enquiryDate'] as int)
          : null,
      productDescription: map['productDescription'] != null
          ? map['productDescription'] as bool
          : null,
      Qty: map['Qty'] != null ? map['Qty'] as bool : null,
      poDueDate: map['poDueDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['poDueDate'] as int)
          : null,
      TermsConditions: map['TermsConditions'] != null
          ? map['TermsConditions'] as bool
          : null,
      Material: map['Material'] != null ? map['Material'] as String : null,
      MaterialSpecification: map['MaterialSpecification'] != null
          ? map['MaterialSpecification'] as String
          : null,
      Payment: map['Payment'] != null ? map['Payment'] as String : null,
      ThirdPartyInspection: map['ThirdPartyInspection'] != null
          ? map['ThirdPartyInspection'] as bool
          : null,
      AnySpecialRequirements: map['AnySpecialRequirements'] != null
          ? map['AnySpecialRequirements'] as bool
          : null,
      Transport: map['Transport'] != null ? map['Transport'] as String : null,
      Insurance: map['Insurance'] != null ? map['Insurance'] as bool : null,
      AcknowledgementNo: map['AcknowledgementNo'] != null
          ? map['AcknowledgementNo'] as int
          : null,
      AcknowledgementDate: map['AcknowledgementDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(
              map['AcknowledgementDate'] as int)
          : null,
      ReviewedBy:
          map['ReviewedBy'] != null ? map['ReviewedBy'] as String : null,
      ReviewedDate: map['ReviewedDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['ReviewedDate'] as int)
          : null,
      ApprovelBy:
          map['ApprovelBy'] != null ? map['ApprovelBy'] as String : null,
      ApprovelDate: map['ApprovelDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['ApprovelDate'] as int)
          : null,
      Amandmentifany:
          map['Amandmentifany'] != null ? map['Amandmentifany'] as bool : null,
      AmandmentDate: map['AmandmentDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['AmandmentDate'] as int)
          : null,
      DetailsofAmandment: map['DetailsofAmandment'] != null
          ? map['DetailsofAmandment'] as String
          : null,
      AmandmentReviewBy: map['AmandmentReviewBy'] != null
          ? map['AmandmentReviewBy'] as String
          : null,
      AmandmentReviewDate: map['AmandmentReviewDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(
              map['AmandmentReviewDate'] as int)
          : null,
      AmandmentApprovedBy: map['AmandmentApprovedBy'] != null
          ? map['AmandmentApprovedBy'] as String
          : null,
      AmandmentApprovedDate: map['AmandmentApprovedDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(
              map['AmandmentApprovedDate'] as int)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ContractReview.fromJson(String source) =>
      ContractReview.fromMap(json.decode(source) as Map<String, dynamic>);
}
