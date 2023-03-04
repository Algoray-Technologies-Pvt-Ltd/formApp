part of 're_order_level_chart_bloc.dart';

abstract class ReOrderLevelChartEvent extends Equatable {
  const ReOrderLevelChartEvent();

  @override
  List<Object> get props => [];
}

class FtNumberEvent extends ReOrderLevelChartEvent {
  String ftNumber;
  FtNumberEvent({
    required this.ftNumber,
  });
}

class RevNumberEvent extends ReOrderLevelChartEvent {
  String revNumber;
  RevNumberEvent({
    required this.revNumber,
  });
}

class MDateEvent extends ReOrderLevelChartEvent {
  DateTime mDate;
  MDateEvent({
    required this.mDate,
  });
}

class PageNumberEvent extends ReOrderLevelChartEvent {
  String pageNumber;
  PageNumberEvent({
    required this.pageNumber,
  });
}

class SlNumberEvent extends ReOrderLevelChartEvent {
  String slNumber;
  SlNumberEvent({
    required this.slNumber,
  });
}

class DescriptionEvent extends ReOrderLevelChartEvent {
  String description;
  DescriptionEvent({
    required this.description,
  });
}

class MinimumEvent extends ReOrderLevelChartEvent {
  String minimum;
  MinimumEvent({
    required this.minimum,
  });
}

class MaximumEvent extends ReOrderLevelChartEvent {
  String maximum;
  MaximumEvent({
    required this.maximum,
  });
}

class RemarksEvent extends ReOrderLevelChartEvent {
  String remarks;
  RemarksEvent({
    required this.remarks,
  });
}

class FetchingEvent extends ReOrderLevelChartEvent {}

class SaveEvent extends ReOrderLevelChartEvent {}
