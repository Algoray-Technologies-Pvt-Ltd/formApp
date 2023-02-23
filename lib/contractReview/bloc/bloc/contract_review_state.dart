// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'contract_review_bloc.dart';

class ContractReviewState extends Equatable {
  ContractReview? contractReview;
  ContractReviewState({
    this.contractReview,
  });

  @override
  List get props => [contractReview];

  ContractReviewState copyWith({
    ContractReview? contractReview,
  }) {
    return ContractReviewState(
      contractReview: contractReview ?? this.contractReview,
    );
  }
}
