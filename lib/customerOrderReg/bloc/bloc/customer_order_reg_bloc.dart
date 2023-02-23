import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formapp/customerOrderReg/model/customerOrderReg.dart';
import 'package:formapp/main.dart';

part 'customer_order_reg_event.dart';
part 'customer_order_reg_state.dart';

class CustomerOrderRegBloc
    extends Bloc<CustomerOrderRegEvent, CustomerOrderRegState> {
  CustomerOrderRegBloc() : super(CustomerOrderRegState()) {
    on<RemarksEvent>((event, emit) {
      emit(state.copyWith(
          customerOrderReg:
              state.customerOrderReg?.copyWith(Remarks: event.Remarks)));
    });
    on<CoordinatorNameEvent>((event, emit) {
      emit(state.copyWith(
          customerOrderReg: state.customerOrderReg
              ?.copyWith(CoordinatorName: event.CoordinatorName)));
    });
    on<PaymentReceivedDateEvent>((event, emit) {
      emit(state.copyWith(
          customerOrderReg: state.customerOrderReg
              ?.copyWith(PaymentReceivedDate: event.date)));
    });
    on<InvDateEvent>((event, emit) {
      emit(state.copyWith(
          customerOrderReg:
              state.customerOrderReg?.copyWith(InvDate: event.date)));
    });
    on<InvNoEvent>((event, emit) {
      emit(state.copyWith(
          customerOrderReg:
              state.customerOrderReg?.copyWith(InvNo: event.InvNo)));
    });
    on<DelDateEvent>((event, emit) {
      emit(state.copyWith(
          customerOrderReg:
              state.customerOrderReg?.copyWith(DelDate: event.date)));
    });
    on<QtySuppliedEvent>((event, emit) {
      emit(state.copyWith(
          customerOrderReg: state.customerOrderReg
              ?.copyWith(QtySupplied: event.QtySupplied)));
    });

    on<DelDueDateEvent>((event, emit) {
      emit(state.copyWith(
          customerOrderReg:
              state.customerOrderReg?.copyWith(DelDueDate: event.DelDueDate)));
    });

    on<TaxEvent>((event, emit) {
      emit(state.copyWith(
          customerOrderReg: state.customerOrderReg?.copyWith(Tax: event.Tax)));
    });
    on<TotalValueEvent>((event, emit) {
      emit(state.copyWith(
          customerOrderReg:
              state.customerOrderReg?.copyWith(totalValue: event.totalValue)));
    });
    on<OrderQtyEvent>((event, emit) {
      emit(state.copyWith(
          customerOrderReg:
              state.customerOrderReg?.copyWith(OrderQty: event.OrderQty)));
    });
    on<DescriptionofJobEvent>((event, emit) {
      emit(state.copyWith(
          customerOrderReg: state.customerOrderReg
              ?.copyWith(DescriptionofJob: event.DescriptionofJob)));
    });

    on<CustomerNameEvent>((event, emit) {
      emit(state.copyWith(
          customerOrderReg: state.customerOrderReg
              ?.copyWith(CustomerName: event.CustomerName)));
    });

    on<PurchaseOrderDate>((event, emit) {
      emit(state.copyWith(
          customerOrderReg:
              state.customerOrderReg?.copyWith(PurchaseOrderDate: event.date)));
    });

    on<PurchaseOrderNoEvent>((event, emit) {
      emit(state.copyWith(
          customerOrderReg: state.customerOrderReg
              ?.copyWith(PurchaseOrderNo: event.PurchaseOrderNo)));
    });

    on<QuoNumberEvent>((event, emit) {
      emit(state.copyWith(
          customerOrderReg:
              state.customerOrderReg?.copyWith(QuoNumber: event.QuoNumber)));
    });

    on<SiNumberEvent>((event, emit) {
      emit(state.copyWith(
          customerOrderReg:
              state.customerOrderReg?.copyWith(siNumber: event.siNumber)));
    });

    on<DateEvent>((event, emit) {
      emit(state.copyWith(
          customerOrderReg:
              state.customerOrderReg?.copyWith(date: event.date)));
    });
    on<RevNumberEvent>((event, emit) {
      emit(state.copyWith(
          customerOrderReg:
              state.customerOrderReg?.copyWith(revNumber: event.revNumber)));
    });
    on<FtNumberEvent>((event, emit) {
      emit(state.copyWith(
          customerOrderReg:
              state.customerOrderReg?.copyWith(ftNumber: event.ftNumber)));
    });
    on<FormNameEvent>((event, emit) {
      emit(state.copyWith(
          customerOrderReg:
              state.customerOrderReg?.copyWith(formName: event.formName)));
    });
  }
}
