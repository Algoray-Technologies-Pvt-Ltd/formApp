// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class ToolsListModel extends Equatable {
  String? ftNumber;
  String? revNumber;
  DateTime? date;
  String? pageNumber;
  String? slNumber;
  String? description;
  String? size;
  int? quantity;
  String? make;
  String? remarks;
  ToolsListModel({
    this.ftNumber,
    this.revNumber,
    this.date,
    this.pageNumber,
    this.slNumber,
    this.description,
    this.size,
    this.quantity,
    this.make,
    this.remarks,
  });

  @override
  List<Object?> get props => [
        ftNumber,
        revNumber,
        date,
        pageNumber,
        slNumber,
        description,
        size,
        quantity,
        make,
        remarks
      ];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ftNumber': ftNumber,
      'revNumber': revNumber,
      'date': date?.millisecondsSinceEpoch,
      'pageNumber': pageNumber,
      'slNumber': slNumber,
      'description': description,
      'size': size,
      'quantity': quantity,
      'make': make,
      'remarks': remarks,
    };
  }

  factory ToolsListModel.fromMap(Map<String, dynamic> map) {
    return ToolsListModel(
      ftNumber: map['ftNumber'] != null ? map['ftNumber'] as String : null,
      revNumber: map['revNumber'] != null ? map['revNumber'] as String : null,
      date: map['date'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['date'] as int)
          : null,
      pageNumber:
          map['pageNumber'] != null ? map['pageNumber'] as String : null,
      slNumber: map['slNumber'] != null ? map['slNumber'] as String : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      size: map['size'] != null ? map['size'] as String : null,
      quantity: map['quantity'] != null ? map['quantity'] as int : null,
      make: map['make'] != null ? map['make'] as String : null,
      remarks: map['remarks'] != null ? map['remarks'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ToolsListModel.fromJson(String source) =>
      ToolsListModel.fromMap(json.decode(source) as Map<String, dynamic>);

  ToolsListModel copyWith({
    String? ftNumber,
    String? revNumber,
    DateTime? date,
    String? pageNumber,
    String? slNumber,
    String? description,
    String? size,
    int? quantity,
    String? make,
    String? remarks,
  }) {
    return ToolsListModel(
      ftNumber: ftNumber ?? this.ftNumber,
      revNumber: revNumber ?? this.revNumber,
      date: date ?? this.date,
      pageNumber: pageNumber ?? this.pageNumber,
      slNumber: slNumber ?? this.slNumber,
      description: description ?? this.description,
      size: size ?? this.size,
      quantity: quantity ?? this.quantity,
      make: make ?? this.make,
      remarks: remarks ?? this.remarks,
    );
  }
}
