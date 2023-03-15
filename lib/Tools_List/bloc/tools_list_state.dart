// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'tools_list_bloc.dart';

class ToolsListState extends Equatable {
  ToolsListModel? toolsListModel;
  Status? status;
  List<InventoryItemHive>? allItems;

  ToolsListState({this.toolsListModel, this.status, this.allItems});

  @override
  List<Object?> get props => [toolsListModel, status, allItems];

  ToolsListState copyWith({
    ToolsListModel? toolsListModel,
    Status? status,
    List<InventoryItemHive>? allItems,
  }) {
    return ToolsListState(
      toolsListModel: toolsListModel ?? this.toolsListModel,
      status: status ?? this.status,
      allItems: allItems ?? this.allItems,
    );
  }
}
