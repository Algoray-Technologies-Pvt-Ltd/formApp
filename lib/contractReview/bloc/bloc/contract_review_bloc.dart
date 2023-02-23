import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formapp/contractReview/model/contractReviewmodel.dart';

part 'contract_review_event.dart';
part 'contract_review_state.dart';

class ContractReviewBloc
    extends Bloc<ContractReviewEvent, ContractReviewState> {
  ContractReviewBloc() : super(ContractReviewState()) {
    on<PoRecDateEvent>((event, emit) {
      emit(state.copyWith(
          contractReview:
              state.contractReview?.copyWith(POrecDate: event.date)));
    });
  
    on<EnquiryNoEvent>((event, emit) {
      emit(state.copyWith(
          contractReview:
              state.contractReview?.copyWith(enquiryNo: event.num)));
    });
    on<QtyEvent>((event, emit) {
      emit(state.copyWith(
          contractReview: state.contractReview?.copyWith(Qty: event.qty)));
    });
    on<PODueDate>((event, emit) {
      emit(state.copyWith(
          contractReview:
              state.contractReview?.copyWith(poDueDate: event.date)));
    });

    on<TermsConditions>((event, emit) {
      emit(state.copyWith(
          contractReview:
              state.contractReview?.copyWith(TermsConditions: event.terms)));
    });
    on<MaterialEvent>((event, emit) {
      emit(state.copyWith(
          contractReview:
              state.contractReview?.copyWith(Material: event.material)));
    });
    on<MaterialSpecificationEvent>((event, emit) {
      emit(state.copyWith(
          contractReview: state.contractReview
              ?.copyWith(MaterialSpecification: event.materialSpecification)));
    });
    on<PaymentEvent>((event, emit) {
      emit(state.copyWith(
          contractReview:
              state.contractReview?.copyWith(Payment: event.payment)));
    });
    on<ThirdPartyInspectionEvent>((event, emit) {
      emit(state.copyWith(
          contractReview: state.contractReview
              ?.copyWith(ThirdPartyInspection: event.thirdPartyInspection)));
    });
    on<AnySpecialRequirementsEvent>((event, emit) {
      emit(state.copyWith(
          contractReview: state.contractReview
              ?.copyWith(AnySpecialRequirements: event.SpecialRequirement)));
    });
    on<TransportEvent>((event, emit) {
      emit(state.copyWith(
          contractReview:
              state.contractReview?.copyWith(Transport: event.transport)));
    });
    on<InsuranceEvent>((event, emit) {
      emit(state.copyWith(
          contractReview:
              state.contractReview?.copyWith(Insurance: event.insurance)));
    });
    on<AcknowledgementNoEvent>((event, emit) {
      emit(state.copyWith(
          contractReview: state.contractReview
              ?.copyWith(AcknowledgementNo: event.acknowledgementNo)));
    });
    on<AcknowledgementDateEvent>((event, emit) {
      emit(state.copyWith(
          contractReview: state.contractReview
              ?.copyWith(AcknowledgementDate: event.acknowledgementDate)));
    });
    on<ReviewedByEvent>((event, emit) {
      emit(state.copyWith(
          contractReview:
              state.contractReview?.copyWith(ReviewedBy: event.reviewedBy)));
    });

    on<ReviewedDateEvent>((event, emit) {
      emit(state.copyWith(
          contractReview: state.contractReview
              ?.copyWith(ReviewedDate: event.reviewedDate)));
    });

    on<ApprovedByEvent>((event, emit) {
      emit(state.copyWith(
          contractReview:
              state.contractReview?.copyWith(ApprovelBy: event.approvedBy)));
    });
    on<ApprovedDateEvent>((event, emit) {
      emit(state.copyWith(
          contractReview: state.contractReview
              ?.copyWith(ApprovelDate: event.approvedDate)));
    });
    on<AmandmentEvent>((event, emit) {
      emit(state.copyWith(
          contractReview:
              state.contractReview?.copyWith(Amandmentifany: event.Amandment)));
    });
    on<AmandmentDateEvent>((event, emit) {
      emit(state.copyWith(
          contractReview: state.contractReview
              ?.copyWith(AmandmentDate: event.amandmentDate)));
    });
    on<DetailsofAmandmentEvent>((event, emit) {
      emit(state.copyWith(
          contractReview: state.contractReview
              ?.copyWith(DetailsofAmandment: event.detailsofAmandment)));
    });
    on<AmandmentReviewedByEvent>((event, emit) {
      emit(state.copyWith(
          contractReview: state.contractReview
              ?.copyWith(AmandmentReviewBy: event.reviewedBy)));
    });
    on<AmandmentReviewedDateEvent>((event, emit) {
      emit(state.copyWith(
          contractReview: state.contractReview
              ?.copyWith(AmandmentReviewDate: event.reviewedDate)));
    });
    on<AmandmentApprovedByEvent>((event, emit) {
      emit(state.copyWith(
          contractReview: state.contractReview
              ?.copyWith(AmandmentApprovedBy: event.approvedBy)));
    });
    on<AmandmentApprovedDateEvent>((event, emit) {
      emit(state.copyWith(
          contractReview: state.contractReview
              ?.copyWith(AmandmentApprovedDate: event.approvedDate)));
    });
  }
}
