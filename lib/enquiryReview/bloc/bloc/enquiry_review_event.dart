part of 'enquiry_review_bloc.dart';

abstract class EnquiryReviewEvent extends Equatable {
  const EnquiryReviewEvent();

  @override
  List<Object> get props => [];
}

class ProductDescriptionEvent extends EnquiryReviewEvent {
  bool productDescription;
  ProductDescriptionEvent({
    required this.productDescription,
  });
}

class QtyEvent extends EnquiryReviewEvent {
  bool Qty;
  QtyEvent({
    required this.Qty,
  });
}

class OfferDueDateEvent extends EnquiryReviewEvent {
  DateTime date;
  OfferDueDateEvent({
    required this.date,
  });
}

class TermsConditionsEvent extends EnquiryReviewEvent {
  bool terms;
  TermsConditionsEvent({
    required this.terms,
  });
}

class ReviewedByEvent extends EnquiryReviewEvent {
  String reviewedBy;
  ReviewedByEvent({
    required this.reviewedBy,
  });
}

class ReviewedDateEvent extends EnquiryReviewEvent {
  DateTime date;
  ReviewedDateEvent({
    required this.date,
  });
}

class ApprovelByEvent extends EnquiryReviewEvent {
  String approval;
  ApprovelByEvent({
    required this.approval,
  });
}

class ApprovelDateEvent extends EnquiryReviewEvent {
  DateTime date;
  ApprovelDateEvent({
    required this.date,
  });
}

class AmandmentifanyEvent extends EnquiryReviewEvent {
  bool Amandment;
  AmandmentifanyEvent({
    required this.Amandment,
  });
}

class AmandmentDateEvent extends EnquiryReviewEvent {
  DateTime date;
  AmandmentDateEvent({
    required this.date,
  });
}

class DetailsofAmandmentEvent extends EnquiryReviewEvent {
  String details;
  DetailsofAmandmentEvent({
    required this.details,
  });
}

class AmandmentReviewByEvent extends EnquiryReviewEvent {
  String AmandmentReviewBy;
  AmandmentReviewByEvent({
    required this.AmandmentReviewBy,
  });
}

class AmandmentReviewDateEvent extends EnquiryReviewEvent {
  DateTime date;
  AmandmentReviewDateEvent({
    required this.date,
  });
}

class AmandmentApprovedByEvent extends EnquiryReviewEvent {
  String Amandment;
  AmandmentApprovedByEvent({
    required this.Amandment,
  });
}

class AmandmentApprovedDateEvent extends EnquiryReviewEvent {
  DateTime date;
  AmandmentApprovedDateEvent({
    required this.date,
  });
}

class EnquiryNOEvent extends EnquiryReviewEvent {
  String enquiry;
  EnquiryNOEvent({
    required this.enquiry,
  });
}

class EnquiryDateEvent extends EnquiryReviewEvent {
  DateTime date;
  EnquiryDateEvent({
    required this.date,
  });
}

class AddressEvent extends EnquiryReviewEvent {
  AddressBook address;
  AddressEvent({
    required this.address,
  });
}

class RecDateEvent extends EnquiryReviewEvent {
  DateTime RecDate;
  RecDateEvent({
    required this.RecDate,
  });
}

class DateEvent extends EnquiryReviewEvent {
  DateTime date;
  DateEvent({
    required this.date,
  });
}

class RevNumberEvent extends EnquiryReviewEvent {
  String revNumber;
  RevNumberEvent({
    required this.revNumber,
  });
}

class FtNumberEvent extends EnquiryReviewEvent {
  String ftNumber;
  FtNumberEvent({
    required this.ftNumber,
  });
}

class FormNameEvent extends EnquiryReviewEvent {
  String formName;
  FormNameEvent({
    required this.formName,
  });
}

class SaveEvent extends EnquiryReviewEvent {}
