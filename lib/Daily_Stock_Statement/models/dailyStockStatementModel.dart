// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class DailyStockStatementModel extends Equatable {
  String? ftNumber;
  String? revNumber;
  DateTime? date;
  String? pageNumber;
  DateTime? stockDate;
  String? slNumber;
  String? description;
  int? openingStock;
  int? purchase;
  int? total;
  int? issue;
  int? closingStock;
  String? remarks;
  DailyStockStatementModel({
    this.ftNumber,
    this.revNumber,
    this.date,
    this.pageNumber,
    this.stockDate,
    this.slNumber,
    this.description,
    this.openingStock,
    this.purchase,
    this.total,
    this.issue,
    this.closingStock,
    this.remarks,
  });

  DailyStockStatementModel copyWith({
    String? ftNumber,
    String? revNumber,
    DateTime? date,
    String? pageNumber,
    DateTime? stockDate,
    String? slNumber,
    String? description,
    int? openingStock,
    int? purchase,
    int? total,
    int? issue,
    int? closingStock,
    String? remarks,
  }) {
    return DailyStockStatementModel(
      ftNumber: ftNumber ?? this.ftNumber,
      revNumber: revNumber ?? this.revNumber,
      date: date ?? this.date,
      pageNumber: pageNumber ?? this.pageNumber,
      stockDate: stockDate ?? this.stockDate,
      slNumber: slNumber ?? this.slNumber,
      description: description ?? this.description,
      openingStock: openingStock ?? this.openingStock,
      purchase: purchase ?? this.purchase,
      total: total ?? this.total,
      issue: issue ?? this.issue,
      closingStock: closingStock ?? this.closingStock,
      remarks: remarks ?? this.remarks,
    );
  }

  @override
  List<Object?> get props => [
        ftNumber,
        revNumber,
        date,
        pageNumber,
        stockDate,
        slNumber,
        description,
        openingStock,
        purchase,
        total,
        issue,
        closingStock,
        remarks
      ];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ftNumber': ftNumber,
      'revNumber': revNumber,
      'date': date?.millisecondsSinceEpoch,
      'pageNumber': pageNumber,
      'stockDate': stockDate?.millisecondsSinceEpoch,
      'slNumber': slNumber,
      'description': description,
      'openingStock': openingStock,
      'purchase': purchase,
      'total': total,
      'issue': issue,
      'closingStock': closingStock,
      'remarks': remarks,
    };
  }

  factory DailyStockStatementModel.fromMap(Map<String, dynamic> map) {
    return DailyStockStatementModel(
      ftNumber: map['ftNumber'] != null ? map['ftNumber'] as String : null,
      revNumber: map['revNumber'] != null ? map['revNumber'] as String : null,
      date: map['date'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['date'] as int)
          : null,
      pageNumber:
          map['pageNumber'] != null ? map['pageNumber'] as String : null,
      stockDate: map['stockDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['stockDate'] as int)
          : null,
      slNumber: map['slNumber'] != null ? map['slNumber'] as String : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      openingStock:
          map['openingStock'] != null ? map['openingStock'] as int : null,
      purchase: map['purchase'] != null ? map['purchase'] as int : null,
      total: map['total'] != null ? map['total'] as int : null,
      issue: map['issue'] != null ? map['issue'] as int : null,
      closingStock:
          map['closingStock'] != null ? map['closingStock'] as int : null,
      remarks: map['remarks'] != null ? map['remarks'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory DailyStockStatementModel.fromJson(String source) =>
      DailyStockStatementModel.fromMap(
          json.decode(source) as Map<String, dynamic>);
}
