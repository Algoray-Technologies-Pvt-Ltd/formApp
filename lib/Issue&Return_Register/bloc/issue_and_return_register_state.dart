// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'issue_and_return_register_bloc.dart';

class IssueAndReturnRegisterState extends Equatable {
  IssueAndReturnRegisterModel? issueAndReturnRegisterModel;
  Status? status;
  List<InventoryItemHive>? allItems;

  IssueAndReturnRegisterState(
      {this.issueAndReturnRegisterModel, this.status, this.allItems});

  @override
  List<Object?> get props => [issueAndReturnRegisterModel, status, allItems];

  IssueAndReturnRegisterState copyWith({
    IssueAndReturnRegisterModel? issueAndReturnRegisterModel,
    Status? status,
    List<InventoryItemHive>? allItems,
  }) {
    return IssueAndReturnRegisterState(
      issueAndReturnRegisterModel:
          issueAndReturnRegisterModel ?? this.issueAndReturnRegisterModel,
      status: status ?? this.status,
      allItems: allItems ?? this.allItems
    );
  }
}
