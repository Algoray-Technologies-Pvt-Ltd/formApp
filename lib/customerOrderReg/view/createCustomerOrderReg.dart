import 'package:flutter/material.dart';
import 'package:formapp/customerOrderReg/view/widget/DelDate.dart';
import 'package:formapp/customerOrderReg/view/widget/InvDate.dart';
import 'package:formapp/customerOrderReg/view/widget/PaymentReceivedDate.dart';
import 'package:formapp/customerOrderReg/view/widget/delDueDate.dart';
import 'package:formapp/customerOrderReg/view/widget/orderReceivedDate.dart';
import 'package:formapp/customerOrderReg/view/widget/purchaseOrderDate.dart';
import 'package:formapp/customerOrderReg/view/widget/quoDate.dart';
import 'package:formapp/widgets/ktextFeild.dart';

class CreateOrderReg extends StatelessWidget {
  const CreateOrderReg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text('Register Order'),
                )),
          )
        ],
        elevation: 0,
        title: Text('Register customer Order'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Wrap(children: [
          OrderRecivedDateCORWidget(),
          KTextField(
            initialText: '',
            hintText: 'Quo.No',
          ),
          QuotationDateCORWidget(),
          KTextField(
            initialText: '',
            hintText: 'Purchase Order No',
          ),
          PurchaseDateCORWidget(),
          KTextField(
            initialText: '',
            hintText: 'Customer Name',
          ),
          KTextField(
            initialText: '',
            hintText: 'Order Qty',
          ),
          KTextField(
            initialText: '',
            hintText: 'Rate',
          ),
          KTextField(
            initialText: '',
            hintText: 'Total Value',
          ),
          KTextField(
            initialText: '',
            hintText: 'Tax',
          ),
          DelDueDateCORWidget(),
          KTextField(
            initialText: '',
            hintText: 'Qty Supplied',
          ),
          DelDateCORWidget(),
          KTextField(
            initialText: '',
            hintText: 'Inv. No',
          ),
          InvDateCORWidget(),
          PaymentReceivedDateCORWidget(),
          KTextField(
            initialText: '',
            hintText: 'Coordinator Name ',
          ),
          KTextField(
            initialText: '',
            hintText: 'Remarks',
          ),
        ]),
      ),
    );
  }
}
