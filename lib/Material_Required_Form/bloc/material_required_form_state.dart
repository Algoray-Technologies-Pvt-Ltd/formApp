// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'material_required_form_bloc.dart';

class MaterialRequiredFormState extends Equatable {
  MaterialrequiredFormModel? materialrequiredFormModel;
  Status? status;
  MaterialRequiredFormState({this.materialrequiredFormModel, this.status});

  @override
  List<Object?> get props => [materialrequiredFormModel, status];

  MaterialRequiredFormState copyWith({
    MaterialrequiredFormModel? materialrequiredFormModel,
    Status? status,
  }) {
    return MaterialRequiredFormState(
      materialrequiredFormModel:
          materialrequiredFormModel ?? this.materialrequiredFormModel,
      status: status ?? this.status,
    );
  }
}
