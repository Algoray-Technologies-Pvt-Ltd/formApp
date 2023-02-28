// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'contract_review_listbloc_bloc.dart';

class ContractReviewListblocState extends Equatable {
  List<ContractReview>? contractreviewList = [];
  ContractReviewListblocState({
    this.contractreviewList,
  });
  @override
  List get props => [contractreviewList];

  ContractReviewListblocState copyWith({
    List<ContractReview>? contractreviewList,
  }) {
    return ContractReviewListblocState(
      contractreviewList: contractreviewList ?? this.contractreviewList,
    );
  }
}
