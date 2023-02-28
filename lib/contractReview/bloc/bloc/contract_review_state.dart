// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'contract_review_bloc.dart';

class ContractReviewState extends Equatable {
  ContractReview? contractReview;
  ContractReviewStatus? status;
  ContractReviewState({this.contractReview, this.status});

  @override
  List get props => [contractReview, status];

  ContractReviewState copyWith(
      {ContractReview? contractReview, ContractReviewStatus? status}) {
    return ContractReviewState(
        contractReview: contractReview ?? this.contractReview,
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
