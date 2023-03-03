// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'contract_review_bloc.dart';

class ContractReviewState extends Equatable {
  ContractReview? contractReview;
  ContractReviewStatus? status;
  List<Data>? allledger;
  ContractReviewState({this.contractReview, this.status, this.allledger});

  @override
  List get props => [contractReview, status, allledger];

  ContractReviewState copyWith(
      {ContractReview? contractReview,
      ContractReviewStatus? status,
      List<Data>? allledger}) {
    return ContractReviewState(
        contractReview: contractReview ?? this.contractReview,
        allledger: allledger ?? this.allledger,
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
