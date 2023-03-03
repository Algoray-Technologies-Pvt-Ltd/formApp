import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../status.dart';
import '../models/issueAndReturnRegisterModel.dart';

part 'issue_and_return_register_event.dart';
part 'issue_and_return_register_state.dart';

class IssueAndReturnRegisterBloc
    extends Bloc<IssueAndReturnRegisterEvent, IssueAndReturnRegisterState> {
  IssueAndReturnRegisterBloc()
      : super(IssueAndReturnRegisterState(
            issueAndReturnRegisterModel: IssueAndReturnRegisterModel(),
            status: Status.init)) {
    on<FtNumberEvent>((event, emit) {
      emit(state.copyWith(
          issueAndReturnRegisterModel: state.issueAndReturnRegisterModel
              ?.copyWith(ftNumber: event.ftNumber)));
    });
    on<RevNumberEvent>((event, emit) {
      emit(state.copyWith(
          issueAndReturnRegisterModel: state.issueAndReturnRegisterModel
              ?.copyWith(revNumber: event.revNumber)));
    });
    on<MDateEvent>((event, emit) {
      emit(state.copyWith(
          issueAndReturnRegisterModel:
              state.issueAndReturnRegisterModel?.copyWith(date: event.mDate)));
    });
    on<PageNumberEvent>((event, emit) {
      emit(state.copyWith(
          issueAndReturnRegisterModel: state.issueAndReturnRegisterModel
              ?.copyWith(pageNumber: event.pageNumber)));
    });
    on<SlNumberEvent>((event, emit) {
      emit(state.copyWith(
          issueAndReturnRegisterModel: state.issueAndReturnRegisterModel
              ?.copyWith(slNumber: event.slNumber)));
    });
    on<MaterialDescriotionEvent>((event, emit) {
      emit(state.copyWith(
          issueAndReturnRegisterModel: state.issueAndReturnRegisterModel
              ?.copyWith(materialDescription: event.materialDescriotion)));
    });
    on<IssueDateEvent>((event, emit) {
      emit(state.copyWith(
          issueAndReturnRegisterModel: state.issueAndReturnRegisterModel
              ?.copyWith(issueDate: event.issueDate)));
    });
    on<IssueQtyEvent>((event, emit) {
      emit(state.copyWith(
          issueAndReturnRegisterModel: state.issueAndReturnRegisterModel
              ?.copyWith(issueQuantity: event.issueQty)));
    });
    on<IssueToEvent>((event, emit) {
      emit(state.copyWith(
          issueAndReturnRegisterModel: state.issueAndReturnRegisterModel
              ?.copyWith(slNumber: event.issueTo)));
    });
    on<ReturnDateEvent>((event, emit) {
      emit(state.copyWith(
          issueAndReturnRegisterModel: state.issueAndReturnRegisterModel
              ?.copyWith(returnDate: event.returnDate)));
    });
    on<ReturnQtyEvent>((event, emit) {
      emit(state.copyWith(
          issueAndReturnRegisterModel: state.issueAndReturnRegisterModel
              ?.copyWith(returnQuantity: event.returnQty)));
    });
    on<ReturnByEvent>((event, emit) {
      emit(state.copyWith(
          issueAndReturnRegisterModel: state.issueAndReturnRegisterModel
              ?.copyWith(returnBy: event.returnBy)));
    });
    on<RemarksEvent>((event, emit) {
      emit(state.copyWith(
          issueAndReturnRegisterModel: state.issueAndReturnRegisterModel
              ?.copyWith(remarks: event.remarks)));
    });
  }
}
