// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:formapp/main.dart';

class ContractReview extends Equatable {
  String? formName;
  String? ftNumber;
  String? revNumber;
  DateTime? date;
  String? customerName;
  String? customerId;
  AddressBook? address;
  String? poNo;
  DateTime? PODate;
  DateTime? POrecDate;
  String? enquiryNo;
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
  String? AcknowledgementNo;
  DateTime? AcknowledgementDate;
  String? ReviewedBy;
  String? ReviewedById;
  DateTime? ReviewedDate;
  String? ApprovelBy;
  String? ApprovelById;
  DateTime? ApprovelByDate;
  String? ApprovedBy;
  String? ApprovedById;
  DateTime? ApprovedByDate;
  bool? Amandmentifany;
  DateTime? AmandmentDate;
  String? DetailsofAmandment;
  String? AmandmentReviewBy;
  String? AmandmentReviewById;
  DateTime? AmandmentReviewDate;
  String? deliveryAt;
  String? ld;
  DateTime? AmandmentApprovedDate;
  ContractReview({
    this.formName,
    this.ftNumber,
    this.revNumber,
    this.date,
    this.customerName,
    this.customerId,
    this.address,
    this.poNo,
    this.PODate,
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
    this.ReviewedById,
    this.ReviewedDate,
    this.ApprovelBy,
    this.ApprovelById,
    this.ApprovelByDate,
    this.ApprovedBy,
    this.ApprovedById,
    this.ApprovedByDate,
    this.Amandmentifany,
    this.AmandmentDate,
    this.DetailsofAmandment,
    this.AmandmentReviewBy,
    this.AmandmentReviewById,
    this.AmandmentReviewDate,
    this.deliveryAt,
    this.ld,
    this.AmandmentApprovedDate,
  });

  ContractReview copyWith({
    String? formName,
    String? ftNumber,
    String? revNumber,
    DateTime? date,
    String? customerName,
    String? customerId,
    AddressBook? address,
    String? poNo,
    DateTime? PODate,
    DateTime? POrecDate,
    String? enquiryNo,
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
    String? AcknowledgementNo,
    DateTime? AcknowledgementDate,
    String? ReviewedBy,
    String? ReviewedById,
    DateTime? ReviewedDate,
    String? ApprovelBy,
    String? ApprovelById,
    DateTime? ApprovelByDate,
    String? ApprovedBy,
    String? ApprovedById,
    DateTime? ApprovedByDate,
    bool? Amandmentifany,
    DateTime? AmandmentDate,
    String? DetailsofAmandment,
    String? AmandmentReviewBy,
    String? AmandmentReviewById,
    DateTime? AmandmentReviewDate,
    String? deliveryAt,
    String? ld,
    DateTime? AmandmentApprovedDate,
  }) {
    return ContractReview(
      formName: formName ?? this.formName,
      ftNumber: ftNumber ?? this.ftNumber,
      revNumber: revNumber ?? this.revNumber,
      date: date ?? this.date,
      customerName: customerName ?? this.customerName,
      customerId: customerId ?? this.customerId,
      address: address ?? this.address,
      poNo: poNo ?? this.poNo,
      PODate: PODate ?? this.PODate,
      ld: ld ?? this.ld,
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
      ReviewedById: ReviewedById ?? this.ReviewedById,
      ReviewedDate: ReviewedDate ?? this.ReviewedDate,
      ApprovelBy: ApprovelBy ?? this.ApprovelBy,
      ApprovelById: ApprovelById ?? this.ApprovelById,
      ApprovelByDate: ApprovelByDate ?? this.ApprovelByDate,
      ApprovedBy: ApprovedBy ?? this.ApprovedBy,
      ApprovedById: ApprovedById ?? this.ApprovedById,
      ApprovedByDate: ApprovedByDate ?? this.ApprovedByDate,
      Amandmentifany: Amandmentifany ?? this.Amandmentifany,
      AmandmentDate: AmandmentDate ?? this.AmandmentDate,
      DetailsofAmandment: DetailsofAmandment ?? this.DetailsofAmandment,
      AmandmentReviewBy: AmandmentReviewBy ?? this.AmandmentReviewBy,
      AmandmentReviewById: AmandmentReviewById ?? this.AmandmentReviewById,
      AmandmentReviewDate: AmandmentReviewDate ?? this.AmandmentReviewDate,
      deliveryAt: deliveryAt ?? this.deliveryAt,
      AmandmentApprovedDate:
          AmandmentApprovedDate ?? this.AmandmentApprovedDate,
    );
  }

  @override
  List get props {
    return [
      formName,
      ftNumber,
      revNumber,
      ld,
      date,
      customerName,
      customerId,
      address,
      poNo,
      PODate,
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
      ReviewedById,
      ReviewedDate,
      ApprovelBy,
      ApprovelById,
      ApprovelByDate,
      ApprovedBy,
      ApprovedById,
      ApprovedByDate,
      Amandmentifany,
      AmandmentDate,
      DetailsofAmandment,
      AmandmentReviewBy,
      AmandmentReviewById,
      AmandmentReviewDate,
      deliveryAt,
      AmandmentApprovedDate,
    ];
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'formName': formName,
      'ftNumber': ftNumber,
      'revNumber': revNumber,
      'date': date?.millisecondsSinceEpoch,
      'customerName': customerName,
      'customerId': customerId,
      'address': address,
      'poNo': poNo,
      'ld': ld,
      'PODate': PODate?.millisecondsSinceEpoch,
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
      'ReviewedById': ReviewedById,
      'ReviewedDate': ReviewedDate?.millisecondsSinceEpoch,
      'ApprovelBy': ApprovelBy,
      'ApprovelById': ApprovelById,
      'ApprovelByDate': ApprovelByDate?.millisecondsSinceEpoch,
      'ApprovedBy': ApprovedBy,
      'ApprovedById': ApprovedById,
      'ApprovedByDate': ApprovedByDate?.millisecondsSinceEpoch,
      'Amandmentifany': Amandmentifany,
      'AmandmentDate': AmandmentDate?.millisecondsSinceEpoch,
      'DetailsofAmandment': DetailsofAmandment,
      'AmandmentReviewBy': AmandmentReviewBy,
      'AmandmentReviewById': AmandmentReviewById,
      'AmandmentReviewDate': AmandmentReviewDate?.millisecondsSinceEpoch,
      'deliveryAt': deliveryAt,
      'AmandmentApprovedDate': AmandmentApprovedDate?.millisecondsSinceEpoch,
    };
  }

  factory ContractReview.fromMap(Map<String, dynamic> map) {
    return ContractReview(
      formName: map['formName'] != null ? map['formName'] as String : null,
      ftNumber: map['ftNumber'] != null ? map['ftNumber'] as String : null,
      revNumber: map['revNumber'] != null ? map['revNumber'] as String : null,
      ld: map['ld'] != null ? map['ld'] as String : null,
      date: map['date'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['date'] as int)
          : null,
      customerName:
          map['customerName'] != null ? map['customerName'] as String : null,
      customerId:
          map['customerId'] != null ? map['customerId'] as String : null,
      address: map['address'],
      poNo: map['poNo'] != null ? map['poNo'] as String : null,
      PODate: map['PODate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['PODate'] as int)
          : null,
      POrecDate: map['POrecDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['POrecDate'] as int)
          : null,
      enquiryNo: map['enquiryNo'] != null ? map['enquiryNo'] as String : null,
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
          ? map['AcknowledgementNo'] as String
          : null,
      AcknowledgementDate: map['AcknowledgementDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(
              map['AcknowledgementDate'] as int)
          : null,
      ReviewedBy:
          map['ReviewedBy'] != null ? map['ReviewedBy'] as String : null,
      ReviewedById:
          map['ReviewedById'] != null ? map['ReviewedById'] as String : null,
      ReviewedDate: map['ReviewedDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['ReviewedDate'] as int)
          : null,
      ApprovelBy:
          map['ApprovelBy'] != null ? map['ApprovelBy'] as String : null,
      ApprovelById:
          map['ApprovelById'] != null ? map['ApprovelById'] as String : null,
      ApprovelByDate: map['ApprovelByDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['ApprovelByDate'] as int)
          : null,
      ApprovedBy:
          map['ApprovedBy'] != null ? map['ApprovedBy'] as String : null,
      ApprovedById:
          map['ApprovedById'] != null ? map['ApprovedById'] as String : null,
      ApprovedByDate: map['ApprovedByDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['ApprovedByDate'] as int)
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
      AmandmentReviewById: map['AmandmentReviewById'] != null
          ? map['AmandmentReviewById'] as String
          : null,
      AmandmentReviewDate: map['AmandmentReviewDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(
              map['AmandmentReviewDate'] as int)
          : null,
      deliveryAt:
          map['deliveryAt'] != null ? map['deliveryAt'] as String : null,
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
