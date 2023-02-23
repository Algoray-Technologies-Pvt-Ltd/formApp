import 'package:flutter/material.dart';
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
          KTextField(
            initialText: '',
            hintText: 'Order Received Date',
          ),
          KTextField(
            initialText: '',
            hintText: 'Quo.No. & Date',
          ),
          KTextField(
            initialText: '',
            hintText: 'Purchase Order No. & Date',
          ),
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
          KTextField(
            initialText: '',
            hintText: 'Del. Due Date',
          ),
          KTextField(
            initialText: '',
            hintText: 'Qty Supplied',
          ),
          KTextField(
            initialText: '',
            hintText: 'Del. Date',
          ),
          KTextField(
            initialText: '',
            hintText: 'Inv. No. & Date',
          ),
          KTextField(
            initialText: '',
            hintText: 'Payment Received  Date',
          ),
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
