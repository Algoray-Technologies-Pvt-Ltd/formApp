// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'customer_order_reg_bloc.dart';

class CustomerOrderRegState extends Equatable {
  CustomerOrderReg? customerOrderReg;
  CustomerOrderRegState({
    this.customerOrderReg,
  });
  @override
  List get props => [customerOrderReg];

  CustomerOrderRegState copyWith({
    CustomerOrderReg? customerOrderReg,
  }) {
    return CustomerOrderRegState(
      customerOrderReg: customerOrderReg ?? this.customerOrderReg,
    );
  }
}
