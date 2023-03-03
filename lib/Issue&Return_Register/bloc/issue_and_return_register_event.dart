part of 'issue_and_return_register_bloc.dart';

abstract class IssueAndReturnRegisterEvent extends Equatable {
  const IssueAndReturnRegisterEvent();

  @override
  List<Object> get props => [];
}

class FtNumberEvent extends IssueAndReturnRegisterEvent {
  String ftNumber;
  FtNumberEvent({
    required this.ftNumber,
  });
}

class RevNumberEvent extends IssueAndReturnRegisterEvent {
  String revNumber;
  RevNumberEvent({
    required this.revNumber,
  });
}

class MDateEvent extends IssueAndReturnRegisterEvent {
  DateTime mDate;
  MDateEvent({
    required this.mDate,
  });
}

class PageNumberEvent extends IssueAndReturnRegisterEvent {
  String pageNumber;
  PageNumberEvent({
    required this.pageNumber,
  });
}

class SlNumberEvent extends IssueAndReturnRegisterEvent {
  String slNumber;
  SlNumberEvent({
    required this.slNumber,
  });
}

class MaterialDescriotionEvent extends IssueAndReturnRegisterEvent {
  String materialDescriotion;
  MaterialDescriotionEvent({
    required this.materialDescriotion,
  });
}

class IssueDateEvent extends IssueAndReturnRegisterEvent {
  DateTime issueDate;
  IssueDateEvent({
    required this.issueDate,
  });
}

class IssueQtyEvent extends IssueAndReturnRegisterEvent {
  int issueQty;
  IssueQtyEvent({
    required this.issueQty,
  });
}

class IssueToEvent extends IssueAndReturnRegisterEvent {
  String issueTo;
  IssueToEvent({
    required this.issueTo,
  });
}

class ReturnDateEvent extends IssueAndReturnRegisterEvent {
  DateTime returnDate;
  ReturnDateEvent({
    required this.returnDate,
  });
}

class ReturnQtyEvent extends IssueAndReturnRegisterEvent {
  int returnQty;
  ReturnQtyEvent({
    required this.returnQty,
  });
}

class ReturnByEvent extends IssueAndReturnRegisterEvent {
  String returnBy;
  ReturnByEvent({
    required this.returnBy,
  });
}

class RemarksEvent extends IssueAndReturnRegisterEvent {
  String remarks;
  RemarksEvent({
    required this.remarks,
  });
}
