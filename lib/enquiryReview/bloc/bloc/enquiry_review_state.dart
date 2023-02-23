// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'enquiry_review_bloc.dart';

class EnquiryReviewState extends Equatable {
  EnquiryReview? enquiryReview;
  EnquiryReviewState({
    this.enquiryReview,
  });

  @override
  List<Object> get props => [];

  EnquiryReviewState copyWith({
    EnquiryReview? enquiryReview,
  }) {
    return EnquiryReviewState(
      enquiryReview: enquiryReview ?? this.enquiryReview,
    );
  }
}
