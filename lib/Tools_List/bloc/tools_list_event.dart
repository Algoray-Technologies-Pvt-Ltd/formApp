part of 'tools_list_bloc.dart';

class ToolsListEvent extends Equatable {
  const ToolsListEvent();

  @override
  List<Object> get props => [];
}

class FtNumberEvent extends ToolsListEvent {
  String ftNumber;
  FtNumberEvent({
    required this.ftNumber,
  });
}

class RevNumberEvent extends ToolsListEvent {
  String revNumber;
  RevNumberEvent({
    required this.revNumber,
  });
}

class MDateEvent extends ToolsListEvent {
  DateTime mDate;
  MDateEvent({
    required this.mDate,
  });
}

class PageNumberEvent extends ToolsListEvent {
  String pageNumber;
  PageNumberEvent({
    required this.pageNumber,
  });
}

class SlNumberEvent extends ToolsListEvent {
  String slNumber;
  SlNumberEvent({
    required this.slNumber,
  });
}

class DescriptionEvent extends ToolsListEvent {
  String description;
  DescriptionEvent({
    required this.description,
  });
}

class SizeEvent extends ToolsListEvent {
  String size;
  SizeEvent({
    required this.size,
  });
}

class QuantityEvent extends ToolsListEvent {
  int qty;
  QuantityEvent({
    required this.qty,
  });
}

class MakeEvent extends ToolsListEvent {
  String make;
  MakeEvent({
    required this.make,
  });
}

class RemarksEvent extends ToolsListEvent {
  String remarks;
  RemarksEvent({
    required this.remarks,
  });
}

class FetchingToolsEvent extends ToolsListEvent {}

class SaveEvent extends ToolsListEvent {}
