// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'gate_outward_register_bloc.dart';

class GateOutwardRegisterState extends Equatable {
  GateOutWardRegisterModel? gateOutwardRegisterModel;
  Status? status;
  GateOutwardRegisterState({this.gateOutwardRegisterModel, this.status});

  @override
  List<Object?> get props => [gateOutwardRegisterModel, status];

  GateOutwardRegisterState copyWith({
    GateOutWardRegisterModel? gateOutwardRegisterModel,
    Status? status,
  }) {
    return GateOutwardRegisterState(
      gateOutwardRegisterModel:
          gateOutwardRegisterModel ?? this.gateOutwardRegisterModel,
      status: status ?? this.status,
    );
  }
}
