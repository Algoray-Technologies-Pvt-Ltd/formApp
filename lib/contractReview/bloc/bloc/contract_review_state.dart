// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'contract_review_bloc.dart';

class ContractReviewState extends Equatable {
  ContractReview? contractReview;
  ContractReviewStatus? status;
  List<LedgerMasterHiveModel>? allledger;
  List<EmployeeHiveModel>? allEmloyees;
  ContractReviewState(
      {this.contractReview, this.status, this.allledger, this.allEmloyees});

  @override
  List get props => [contractReview, status, allledger, allEmloyees];

  ContractReviewState copyWith(
      {ContractReview? contractReview,
      List<EmployeeHiveModel>? allEmloyees,
      ContractReviewStatus? status,
      List<LedgerMasterHiveModel>? allledger}) {
    return ContractReviewState(
        contractReview: contractReview ?? this.contractReview,
        allledger: allledger ?? this.allledger,
        allEmloyees: allEmloyees ?? this.allEmloyees,
        status: status ?? this.status);
  }
}

enum ContractReviewStatus {
  init,
  fetching,
  ready,
  fetchError,
  sending,
  sent,
  webService,
  sendError,
}
