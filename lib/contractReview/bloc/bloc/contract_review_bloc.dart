import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:formapp/constants.dart';
import 'package:formapp/contractReview/model/contractReviewmodel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/model/Employee/EmployeeHiveModel.dart';
import 'package:formapp/model/Ledgers/LedMasterHiveModel.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'contract_review_event.dart';
part 'contract_review_state.dart';

class ContractReviewBloc
    extends Bloc<ContractReviewEvent, ContractReviewState> {
  ContractReviewBloc()
      : super(ContractReviewState(
          allledger: [],
          allEmloyees: [],
          status: ContractReviewStatus.init,
          contractReview: ContractReview(
              date: DateTime.now(),
              POrecDate: DateTime.now(),
              PODate: DateTime.now(),
              poDueDate: DateTime.now(),
              ReviewedDate: DateTime.now(),
              ApprovedByDate: DateTime.now(),
              AmandmentDate: DateTime.now(),
              AcknowledgementDate: DateTime.now(),
              ApprovelByDate: DateTime.now(),
              AmandmentReviewDate: DateTime.now(),
              AmandmentApprovedDate: DateTime.now(),
              enquiryDate: DateTime.now()),
        )) {
    on<TodayDateEvent>((event, emit) {
      emit(state.copyWith(
          contractReview:
              state.contractReview?.copyWith(date: DateTime.now())));

      print(state.contractReview?.POrecDate);
    });
    on<PoRecDateEvent>((event, emit) {
      emit(state.copyWith(
          contractReview:
              state.contractReview?.copyWith(POrecDate: event.date)));

      print(state.contractReview?.POrecDate);
    });

    on<PoDateEvent>((event, emit) {
      emit(state.copyWith(
          contractReview: state.contractReview?.copyWith(PODate: event.date)));

      print(state.contractReview?.POrecDate);
    });
    on<DeliveryAt>((event, emit) {
      emit(state.copyWith(
          contractReview:
              state.contractReview?.copyWith(deliveryAt: event.deliveryAt)));

      print(state.contractReview?.POrecDate);
    });
    on<LdEvent>((event, emit) {
      emit(state.copyWith(
          contractReview: state.contractReview?.copyWith(ld: event.ldEvent)));

      print(state.contractReview?.POrecDate);
    });
    on<FetchCEvent>((event, emit) async {
      print('*************###############');
      emit(state.copyWith(status: ContractReviewStatus.fetching));
      print('#######################');
      Box<LedgerMasterHiveModel> ledger = Hive.box<LedgerMasterHiveModel>(
        HiveTagNames.Ledgers_Hive_Tag,
      );
      var s = ledger.values.toList();
      ledger.values.where((element) {
        print('${element.Ledger_Name} - ${element.Group_Id}}');
        return true;
      }).toList();

      print('#######################');
      Box<EmployeeHiveModel> eployee = Hive.box<EmployeeHiveModel>(
        HiveTagNames.Employee_Hive_Tag,
      );
      var emp = eployee.values.toList();

      emit(state.copyWith(
        allledger: s,
      ));
      emit(state.copyWith(
          status: ContractReviewStatus.ready, allledger: s, allEmloyees: emp));

      log(state.allEmloyees.toString());
    });
    on<EnquiryNoEvent>((event, emit) {
      emit(state.copyWith(
          contractReview:
              state.contractReview?.copyWith(enquiryNo: event.num)));
    });
    on<EnquiryDateEvent>((event, emit) {
      emit(state.copyWith(
          contractReview:
              state.contractReview?.copyWith(enquiryDate: event.date)));
    });
    on<ProductDescriptionEvent>((event, emit) {
      emit(state.copyWith(
          contractReview: state.contractReview
              ?.copyWith(productDescription: event.description)));
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
    on<CustomerNameEvent>((event, emit) {
      emit(state.copyWith(
          contractReview: state.contractReview
              ?.copyWith(customerName: event.name, customerId: event.id)));
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
          contractReview: state.contractReview?.copyWith(
              ReviewedBy: event.reviewedBy, ReviewedById: event.id)));
    });

    on<ReviewedDateEvent>((event, emit) {
      emit(state.copyWith(
          contractReview: state.contractReview
              ?.copyWith(ReviewedDate: event.reviewedDate)));
    });
    on<ApprovelByEvent>((event, emit) {
      emit(state.copyWith(
          contractReview: state.contractReview?.copyWith(
              ApprovelBy: event.approvedBy, ApprovelById: event.id)));
    });
    on<ApprovelDateEvent>((event, emit) {
      emit(state.copyWith(
          contractReview: state.contractReview
              ?.copyWith(ApprovelByDate: event.approvedDate)));
    });
    on<ApprovedByEvent>((event, emit) {
      emit(state.copyWith(
          contractReview: state.contractReview?.copyWith(
              ApprovedBy: event.approvedBy, ApprovedById: event.id)));
      print(state.contractReview?.ApprovedBy);
    });
    on<ApprovedDateEvent>((event, emit) {
      emit(state.copyWith(
          contractReview: state.contractReview
              ?.copyWith(ApprovedByDate: event.approvedDate)));
    });
    on<AmandmentEvent>((event, emit) {
      emit(state.copyWith(
          contractReview:
              state.contractReview?.copyWith(Amandmentifany: event.Amandment)));

      print(state.contractReview?.Amandmentifany);
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
          contractReview: state.contractReview?.copyWith(
              AmandmentReviewBy: event.reviewedBy,
              AmandmentReviewById: event.id)));
      print(state.contractReview?.AmandmentReviewBy);
    });
    on<AmandmentReviewedDateEvent>((event, emit) {
      emit(state.copyWith(
          contractReview: state.contractReview
              ?.copyWith(AmandmentReviewDate: event.reviewedDate)));
    });
    on<PoNumberEvent>((event, emit) {
      emit(state.copyWith(
          contractReview: state.contractReview?.copyWith(poNo: event.no)));
    });

    on<AmandmentApprovedDateEvent>((event, emit) {
      emit(state.copyWith(
          contractReview: state.contractReview
              ?.copyWith(AmandmentApprovedDate: event.approvedDate)));
    });
    on<SaveEvent>((event, emit) {
      var s = state.contractReview?.toJson();
      print('********************');
      print(s);
      print('********************');
    });
  }
}
