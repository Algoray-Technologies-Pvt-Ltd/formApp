import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formapp/contractReview/model/contractReviewmodel.dart';

part 'contract_review_listbloc_event.dart';
part 'contract_review_listbloc_state.dart';

class ContractReviewListblocBloc
    extends Bloc<ContractReviewListblocEvent, ContractReviewListblocState> {
  ContractReviewListblocBloc() : super(ContractReviewListblocState()) {
    on<FetchCREvent>((event, emit) {});
  }
}
