// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'tools_list_bloc.dart';

class ToolsListState extends Equatable {
  ToolsListModel? toolsListModel;
  Status? status;
  ToolsListState({this.toolsListModel, this.status});

  @override
  List<Object?> get props => [toolsListModel, status];

  ToolsListState copyWith({
    ToolsListModel? toolsListModel,
    Status? status,
  }) {
    return ToolsListState(
      toolsListModel: toolsListModel ?? this.toolsListModel,
      status: status ?? this.status,
    );
  }
}
