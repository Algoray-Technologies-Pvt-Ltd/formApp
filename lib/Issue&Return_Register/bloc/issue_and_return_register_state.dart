// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'issue_and_return_register_bloc.dart';

class IssueAndReturnRegisterState extends Equatable {
  IssueAndReturnRegisterModel? issueAndReturnRegisterModel;
  Status? status;
  IssueAndReturnRegisterState({this.issueAndReturnRegisterModel, this.status});

  @override
  List<Object?> get props => [issueAndReturnRegisterModel, status];

  IssueAndReturnRegisterState copyWith({
    IssueAndReturnRegisterModel? issueAndReturnRegisterModel,
    Status? status,
  }) {
    return IssueAndReturnRegisterState(
      issueAndReturnRegisterModel: issueAndReturnRegisterModel ?? this.issueAndReturnRegisterModel,
      status: status ?? this.status,
    );
  }
}
