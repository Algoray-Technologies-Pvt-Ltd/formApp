// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'contract_review_bloc.dart';

class ContractReviewEvent extends Equatable {
  const ContractReviewEvent();

  @override
  List<Object> get props => [];
}

class CustomerNameEvent extends ContractReviewEvent {
  String name;
  CustomerNameEvent({
    required this.name,
  });
}

class PoRecDateEvent extends ContractReviewEvent {
  DateTime date;
  PoRecDateEvent({
    required this.date,
  });
}

class PoNumberEvent extends ContractReviewEvent {
  String no;
  PoNumberEvent({
    required this.no,
  });
}

class EnquiryNoEvent extends ContractReviewEvent {
  String num;
  EnquiryNoEvent({
    required this.num,
  });
}

class EnquiryDateEvent extends ContractReviewEvent {
  DateTime date;
  EnquiryDateEvent({
    required this.date,
  });
}

class ProductDescriptionEvent extends ContractReviewEvent {
  bool description;
  ProductDescriptionEvent({
    required this.description,
  });
}

class QtyEvent extends ContractReviewEvent {
  bool qty;
  QtyEvent({
    required this.qty,
  });
}

class PODueDate extends ContractReviewEvent {
  DateTime date;
  PODueDate({
    required this.date,
  });
}

class TermsConditions extends ContractReviewEvent {
  bool terms;
  TermsConditions({
    required this.terms,
  });
}

class MaterialEvent extends ContractReviewEvent {
  String material;
  MaterialEvent({
    required this.material,
  });
}

class MaterialSpecificationEvent extends ContractReviewEvent {
  String materialSpecification;
  MaterialSpecificationEvent({
    required this.materialSpecification,
  });
}

class DeliveryAt extends ContractReviewEvent {
  String deliveryAt;
  DeliveryAt({
    required this.deliveryAt,
  });
}

class LdEvent extends ContractReviewEvent {
  String ldEvent;
  LdEvent({
    required this.ldEvent,
  });
}

class PaymentEvent extends ContractReviewEvent {
  String payment;
  PaymentEvent({
    required this.payment,
  });
}

class ThirdPartyInspectionEvent extends ContractReviewEvent {
  bool thirdPartyInspection;
  ThirdPartyInspectionEvent({
    required this.thirdPartyInspection,
  });
}

class AnySpecialRequirementsEvent extends ContractReviewEvent {
  bool SpecialRequirement;
  AnySpecialRequirementsEvent({
    required this.SpecialRequirement,
  });
}

class TransportEvent extends ContractReviewEvent {
  String transport;
  TransportEvent({
    required this.transport,
  });
}

class InsuranceEvent extends ContractReviewEvent {
  bool insurance;
  InsuranceEvent({
    required this.insurance,
  });
}

class AcknowledgementNoEvent extends ContractReviewEvent {
  String acknowledgementNo;
  AcknowledgementNoEvent({
    required this.acknowledgementNo,
  });
}

class AcknowledgementDateEvent extends ContractReviewEvent {
  DateTime acknowledgementDate;
  AcknowledgementDateEvent({
    required this.acknowledgementDate,
  });
}

class ReviewedByEvent extends ContractReviewEvent {
  String reviewedBy;
  ReviewedByEvent({
    required this.reviewedBy,
  });
}

class ReviewedDateEvent extends ContractReviewEvent {
  DateTime reviewedDate;
  ReviewedDateEvent({
    required this.reviewedDate,
  });
}

class ApprovelByEvent extends ContractReviewEvent {
  String approvedBy;
  ApprovelByEvent({
    required this.approvedBy,
  });
}

class ApprovelDateEvent extends ContractReviewEvent {
  DateTime approvedDate;
  ApprovelDateEvent({
    required this.approvedDate,
  });
}

class ApprovedByEvent extends ContractReviewEvent {
  String approvedBy;
  ApprovedByEvent({
    required this.approvedBy,
  });
}

class ApprovedDateEvent extends ContractReviewEvent {
  DateTime approvedDate;
  ApprovedDateEvent({
    required this.approvedDate,
  });
}

class AmandmentEvent extends ContractReviewEvent {
  bool Amandment;
  AmandmentEvent({
    required this.Amandment,
  });
}

class AmandmentDateEvent extends ContractReviewEvent {
  DateTime amandmentDate;
  AmandmentDateEvent({
    required this.amandmentDate,
  });
}

class DetailsofAmandmentEvent extends ContractReviewEvent {
  String detailsofAmandment;
  DetailsofAmandmentEvent({
    required this.detailsofAmandment,
  });
}

class AmandmentReviewedByEvent extends ContractReviewEvent {
  String reviewedBy;
  AmandmentReviewedByEvent({
    required this.reviewedBy,
  });
}

class AmandmentReviewedDateEvent extends ContractReviewEvent {
  DateTime reviewedDate;
  AmandmentReviewedDateEvent({
    required this.reviewedDate,
  });
}

class AmandmentApprovedByEvent extends ContractReviewEvent {
  String approvedBy;
  AmandmentApprovedByEvent({
    required this.approvedBy,
  });
}

class AmandmentApprovedDateEvent extends ContractReviewEvent {
  DateTime approvedDate;
  AmandmentApprovedDateEvent({
    required this.approvedDate,
  });
}
