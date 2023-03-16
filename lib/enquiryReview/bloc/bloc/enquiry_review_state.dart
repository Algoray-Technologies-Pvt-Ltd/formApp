// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'enquiry_review_bloc.dart';

class EnquiryReviewState extends Equatable {
  EnquiryReview? enquiryReview;
  List<LedgerMasterHiveModel>? allLedger;
  List<EmployeeHiveModel>? allEmloyees;
  EnquiryReviewState({this.enquiryReview, this.allLedger, this.allEmloyees});

  @override
  List get props => [enquiryReview, allLedger, allEmloyees];

  EnquiryReviewState copyWith(
      {EnquiryReview? enquiryReview,
      List<LedgerMasterHiveModel>? allLedger,
      List<EmployeeHiveModel>? allEmloyees}) {
    return EnquiryReviewState(
        enquiryReview: enquiryReview ?? this.enquiryReview,
        allEmloyees: allEmloyees ?? this.allEmloyees,
        allLedger: allLedger ?? this.allLedger);
  }
}
