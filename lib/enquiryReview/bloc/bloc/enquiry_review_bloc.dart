import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formapp/constants.dart';
import 'package:formapp/enquiryReview/model/enquiryReviewModel.dart';
import 'package:formapp/main.dart';
import 'package:formapp/model/Employee/EmployeeHiveModel.dart';
import 'package:formapp/model/Ledgers/LedMasterHiveModel.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'enquiry_review_event.dart';
part 'enquiry_review_state.dart';

class EnquiryReviewBloc extends Bloc<EnquiryReviewEvent, EnquiryReviewState> {
  EnquiryReviewBloc()
      : super(EnquiryReviewState(
            enquiryReview: EnquiryReview(
                recDate: DateTime.now(),
                AmandmentDate: DateTime.now(),
                enquiryDate: DateTime.now(),
                OfferDueDate: DateTime.now(),
                ApprovelDate: DateTime.now(),
                ReviewedDate: DateTime.now(),
                AmandmentApprovedDate: DateTime.now(),
                AmandmentReviewDate: DateTime.now()))) {
    on<ProductDescriptionEvent>((event, emit) {
      emit(state.copyWith(
          enquiryReview: state.enquiryReview
              ?.copyWith(productDescription: event.productDescription)));
    });

    on<QtyEvent>((event, emit) {
      emit(state.copyWith(
          enquiryReview: state.enquiryReview?.copyWith(Qty: event.Qty)));
    });

    on<OfferDueDateEvent>((event, emit) {
      emit(state.copyWith(
          enquiryReview:
              state.enquiryReview?.copyWith(OfferDueDate: event.date)));
    });

    on<TermsConditionsEvent>((event, emit) {
      emit(state.copyWith(
          enquiryReview:
              state.enquiryReview?.copyWith(TermsConditions: event.terms)));
    });

    on<ReviewedByEvent>((event, emit) {
      emit(state.copyWith(
          enquiryReview:
              state.enquiryReview?.copyWith(ReviewedBy: event.reviewedBy)));
    });

    on<ReviewedDateEvent>((event, emit) {
      emit(state.copyWith(
          enquiryReview:
              state.enquiryReview?.copyWith(ReviewedDate: event.date)));
      print(state.enquiryReview?.ReviewedDate);
    });

    on<ApprovelByEvent>((event, emit) {
      emit(state.copyWith(
          enquiryReview:
              state.enquiryReview?.copyWith(ApprovelBy: event.approval)));
    });

    on<ApprovelDateEvent>((event, emit) {
      emit(state.copyWith(
          enquiryReview:
              state.enquiryReview?.copyWith(ApprovelDate: event.date)));
    });

    on<AmandmentifanyEvent>((event, emit) {
      emit(state.copyWith(
          enquiryReview:
              state.enquiryReview?.copyWith(Amandmentifany: event.Amandment)));
    });

    on<AmandmentDateEvent>((event, emit) {
      emit(state.copyWith(
          enquiryReview:
              state.enquiryReview?.copyWith(AmandmentDate: event.date)));
    });

    on<DetailsofAmandmentEvent>((event, emit) {
      emit(state.copyWith(
          enquiryReview: state.enquiryReview
              ?.copyWith(DetailsofAmandment: event.details)));
    });

    on<AmandmentReviewByEvent>((event, emit) {
      emit(state.copyWith(
          enquiryReview: state.enquiryReview
              ?.copyWith(AmandmentReviewBy: event.AmandmentReviewBy)));
    });
    on<RecDateEvent>((event, emit) {
      emit(state.copyWith(
          enquiryReview:
              state.enquiryReview?.copyWith(recDate: event.RecDate)));
    });
    on<AmandmentReviewDateEvent>((event, emit) {
      emit(state.copyWith(
          enquiryReview:
              state.enquiryReview?.copyWith(AmandmentReviewDate: event.date)));
    });

    on<AmandmentApprovedByEvent>((event, emit) {
      emit(state.copyWith(
          enquiryReview: state.enquiryReview
              ?.copyWith(AmandmentApprovedBy: event.Amandment)));
    });

    on<AmandmentApprovedDateEvent>((event, emit) {
      emit(state.copyWith(
          enquiryReview: state.enquiryReview
              ?.copyWith(AmandmentApprovedDate: event.date)));
    });

    on<EnquiryNOEvent>((event, emit) {
      emit(state.copyWith(
          enquiryReview: state.enquiryReview
              ?.copyWith(enquiryNo: int.parse(event.enquiry))));
    });
    on<EnquiryDateEvent>((event, emit) {
      emit(state.copyWith(
          enquiryReview:
              state.enquiryReview?.copyWith(enquiryDate: event.date)));
    });
    on<AddressEvent>((event, emit) {
      emit(state.copyWith(
          enquiryReview:
              state.enquiryReview?.copyWith(address: event.address)));
    });
    on<DateEvent>((event, emit) {
      emit(state.copyWith(
          enquiryReview: state.enquiryReview?.copyWith(date: event.date)));
    });
    on<RevNumberEvent>((event, emit) {
      emit(state.copyWith(
          enquiryReview:
              state.enquiryReview?.copyWith(revNumber: event.revNumber)));
    });
    on<FtNumberEvent>((event, emit) {
      emit(state.copyWith(
          enquiryReview:
              state.enquiryReview?.copyWith(ftNumber: event.ftNumber)));
    });
    on<FormNameEvent>((event, emit) {
      emit(state.copyWith(
          enquiryReview:
              state.enquiryReview?.copyWith(formName: event.formName)));
    });
    on<CustomerNameEvent>((event, emit) {
      emit(state.copyWith(
          enquiryReview:
              state.enquiryReview?.copyWith(customerName: event.CustomerName)));
    });
    on<SaveEvent>((event, emit) {
      var s = state.enquiryReview?.toJson();
      print('********************');
      print(s);
      print('********************');
    });
    on<FetchEvent>((event, emit) async {
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

      emit(state.copyWith(allLedger: s, allEmloyees: emp));
    });
  }
}
