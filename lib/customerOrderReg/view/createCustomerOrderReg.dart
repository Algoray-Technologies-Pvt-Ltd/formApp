import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/customerOrderReg/bloc/bloc/customer_order_reg_bloc.dart';
import 'package:formapp/customerOrderReg/view/widget/DelDate.dart';
import 'package:formapp/customerOrderReg/view/widget/InvDate.dart';
import 'package:formapp/customerOrderReg/view/widget/PaymentReceivedDate.dart';
import 'package:formapp/customerOrderReg/view/widget/delDueDate.dart';
import 'package:formapp/customerOrderReg/view/widget/orderReceivedDate.dart';
import 'package:formapp/customerOrderReg/view/widget/purchaseOrderDate.dart';
import 'package:formapp/customerOrderReg/view/widget/quoDate.dart';
import 'package:formapp/main.dart';
import 'package:formapp/widgets/ktextFeild.dart';

class CreateOrderReg extends StatelessWidget {
  const CreateOrderReg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          context.read<CustomerOrderRegBloc>().add(SaveEvent());
          Navigator.of(context).pop();
        },
        child: const Icon(Icons.save),
      ),
      appBar: AppBar(
        elevation: 0,
        title: Text('Register customer Order'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Wrap(children: [
          OrderRecivedDateCORWidget(),
          KTextField(
            onChanged: (value) {
              context
                  .read<CustomerOrderRegBloc>()
                  .add(QuoNumberEvent(QuoNumber: int.parse(value)));
            },
            initialText: '',
            hintText: 'Quo.No',
          ),
          QuotationDateCORWidget(),
          KTextField(
            onChanged: (value) {
              context
                  .read<CustomerOrderRegBloc>()
                  .add(PurchaseOrderNoEvent(PurchaseOrderNo: int.parse(value)));
            },
            initialText: '',
            hintText: 'Purchase Order No',
          ),
          PurchaseDateCORWidget(),
          KTextField(
            onChanged: (value) {
              context
                  .read<CustomerOrderRegBloc>()
                  .add(CustomerNameEvent(CustomerName: value));
            },
            initialText: '',
            hintText: 'Customer Name',
          ),
          KTextField(
            onChanged: (value) {
              context
                  .read<CustomerOrderRegBloc>()
                  .add(OrderQtyEvent(OrderQty: int.parse(value)));
            },
            initialText: '',
            hintText: 'Order Qty',
          ),
          KTextField(
            onChanged: (value) {
              context
                  .read<CustomerOrderRegBloc>()
                  .add(RateEvent(Rate: int.parse(value)));
            },
            initialText: '',
            hintText: 'Rate',
          ),
          KTextField(
            onChanged: (value) {
              context
                  .read<CustomerOrderRegBloc>()
                  .add(TotalValueEvent(totalValue: double.parse(value)));
            },
            initialText: '',
            hintText: 'Total Value',
          ),
          KTextField(
            onChanged: (value) {
              context
                  .read<CustomerOrderRegBloc>()
                  .add(TaxEvent(Tax: double.parse(value)));
            },
            initialText: '',
            hintText: 'Tax',
          ),
          DelDueDateCORWidget(),
          KTextField(
            onChanged: (value) {
              context
                  .read<CustomerOrderRegBloc>()
                  .add(QtySuppliedEvent(QtySupplied: int.parse(value)));
            },
            initialText: '',
            hintText: 'Qty Supplied',
          ),
          DelDateCORWidget(),
          KTextField(
            onChanged: (value) {
              context
                  .read<CustomerOrderRegBloc>()
                  .add(InvNoEvent(InvNo: int.parse(value)));
            },
            initialText: '',
            hintText: 'Inv. No',
          ),
          InvDateCORWidget(),
          PaymentReceivedDateCORWidget(),
          KTextField(
            onChanged: (value) {
              context
                  .read<CustomerOrderRegBloc>()
                  .add(CoordinatorNameEvent(CoordinatorName: value));
            },
            initialText: '',
            hintText: 'Coordinator Name ',
          ),
          KTextField(
            onChanged: (value) {
              context
                  .read<CustomerOrderRegBloc>()
                  .add(RemarksEvent(Remarks: value));
            },
            initialText: '',
            hintText: 'Remarks',
          ),
        ]),
      ),
    );
  }
}
