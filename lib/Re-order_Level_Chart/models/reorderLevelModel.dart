// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class ReorderLevelModel extends Equatable {
  String? ftNumber;
  String? revNumber;
  DateTime? date;
  String? pageNumber;
  String? slNumber;
  String? description;
  String? minimum;
  String? maximum;
  String? remarks;
  ReorderLevelModel({
    this.ftNumber,
    this.revNumber,
    this.date,
    this.pageNumber,
    this.slNumber,
    this.description,
    this.minimum,
    this.maximum,
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
        minimum,
        maximum,
        remarks
      ];

  ReorderLevelModel copyWith({
    String? ftNumber,
    String? revNumber,
    DateTime? date,
    String? pageNumber,
    String? slNumber,
    String? description,
    String? minimum,
    String? maximum,
    String? remarks,
  }) {
    return ReorderLevelModel(
      ftNumber: ftNumber ?? this.ftNumber,
      revNumber: revNumber ?? this.revNumber,
      date: date ?? this.date,
      pageNumber: pageNumber ?? this.pageNumber,
      slNumber: slNumber ?? this.slNumber,
      description: description ?? this.description,
      minimum: minimum ?? this.minimum,
      maximum: maximum ?? this.maximum,
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
      'description': description,
      'minimum': minimum,
      'maximum': maximum,
      'remarks': remarks,
    };
  }

  factory ReorderLevelModel.fromMap(Map<String, dynamic> map) {
    return ReorderLevelModel(
      ftNumber: map['ftNumber'] != null ? map['ftNumber'] as String : null,
      revNumber: map['revNumber'] != null ? map['revNumber'] as String : null,
      date: map['date'] != null ? DateTime.fromMillisecondsSinceEpoch(map['date'] as int) : null,
      pageNumber: map['pageNumber'] != null ? map['pageNumber'] as String : null,
      slNumber: map['slNumber'] != null ? map['slNumber'] as String : null,
      description: map['description'] != null ? map['description'] as String : null,
      minimum: map['minimum'] != null ? map['minimum'] as String : null,
      maximum: map['maximum'] != null ? map['maximum'] as String : null,
      remarks: map['remarks'] != null ? map['remarks'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ReorderLevelModel.fromJson(String source) => ReorderLevelModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
