// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:formapp/main.dart';

class EnquiryReview extends Equatable {
  String? formName;
  String? ftNumber;
  String? revNumber;

  DateTime? date;
  String? customerName;
  AddressBook? address;
  DateTime? recDate;
  int? enquiryNo;
  DateTime? enquiryDate;
  bool? productDescription;
  bool? Qty;
  DateTime? OfferDueDate;
  bool? TermsConditions;
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
  EnquiryReview({
    this.formName,
    this.ftNumber,
    this.customerName,
    this.revNumber,
    this.date,
    this.address,
    this.recDate,
    this.enquiryNo,
    this.enquiryDate,
    this.productDescription,
    this.Qty,
    this.OfferDueDate,
    this.TermsConditions,
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

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'formName': formName,
      'ftNumber': ftNumber,
      'revNumber': revNumber,
      'date': date?.millisecondsSinceEpoch,
      'address': address,
      'recDate': recDate?.millisecondsSinceEpoch,
      'enquiryNo': enquiryNo,
      'enquiryDate': enquiryDate?.millisecondsSinceEpoch,
      'productDescription': productDescription,
      'Qty': Qty,
      'OfferDueDate': OfferDueDate?.millisecondsSinceEpoch,
      'TermsConditions': TermsConditions,
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

  factory EnquiryReview.fromMap(Map<String, dynamic> map) {
    return EnquiryReview(
      formName: map['formName'] != null ? map['formName'] as String : null,
      ftNumber: map['ftNumber'] != null ? map['ftNumber'] as String : null,
      revNumber: map['revNumber'] != null ? map['revNumber'] as String : null,
      date: map['date'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['date'] as int)
          : null,
      address: map['address'],
      recDate: map['recDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['recDate'] as int)
          : null,
      enquiryNo: map['enquiryNo'] != null ? map['enquiryNo'] as int : null,
      enquiryDate: map['enquiryDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['enquiryDate'] as int)
          : null,
      productDescription: map['productDescription'] != null
          ? map['productDescription'] as bool
          : null,
      Qty: map['Qty'] != null ? map['Qty'] as bool : null,
      OfferDueDate: map['OfferDueDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['OfferDueDate'] as int)
          : null,
      TermsConditions: map['TermsConditions'] != null
          ? map['TermsConditions'] as bool
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

  factory EnquiryReview.fromJson(String source) =>
      EnquiryReview.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  List get props => [
        formName,
        ftNumber,
        revNumber,
        date,
        address,
        customerName,
        recDate,
        enquiryNo,
        enquiryDate,
        productDescription,
        Qty,
        OfferDueDate,
        TermsConditions,
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
        AmandmentApprovedDate,
      ];

  EnquiryReview copyWith({
    String? formName,
    String? ftNumber,
    String? revNumber,
    String? customerName,
    DateTime? date,
    AddressBook? address,
    DateTime? recDate,
    int? enquiryNo,
    DateTime? enquiryDate,
    bool? productDescription,
    bool? Qty,
    DateTime? OfferDueDate,
    bool? TermsConditions,
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
    return EnquiryReview(
      formName: formName ?? this.formName,
      ftNumber: ftNumber ?? this.ftNumber,
      customerName: customerName ?? this.customerName,
      revNumber: revNumber ?? this.revNumber,
      date: date ?? this.date,
      address: address ?? this.address,
      recDate: recDate ?? this.recDate,
      enquiryNo: enquiryNo ?? this.enquiryNo,
      enquiryDate: enquiryDate ?? this.enquiryDate,
      productDescription: productDescription ?? this.productDescription,
      Qty: Qty ?? this.Qty,
      OfferDueDate: OfferDueDate ?? this.OfferDueDate,
      TermsConditions: TermsConditions ?? this.TermsConditions,
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
}
