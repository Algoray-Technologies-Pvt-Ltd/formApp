import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/customerOrderReg/bloc/bloc/customer_order_reg_bloc.dart';
import 'package:formapp/customerOrderReg/view/createCustomerOrderReg.dart';
import 'package:formapp/main.dart';

class CustomerOrderRegScreen extends StatelessWidget {
  const CustomerOrderRegScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customer Order Register'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
            return BlocProvider.value(
                value: context.read<CustomerOrderRegBloc>(),
                child: CreateOrderReg());
          }));
        },
        child: Icon(Icons.add),
      ),
      body: Container(
        padding: EdgeInsets.all(5),
        child: SingleChildScrollView(
          child: Table(
            border: TableBorder.all(),
            children: [
              buildRow([
                'Sl.No',
                "Order Received Date",
                'Quo.No. & Date',
                "Purchase Order No. & Date",
                "Purchase Order No. & Date",
                'Description of Job',
                " Order Qty",
                'Rate',
                "Total Value",
                'Tax',
                "Del. Due Date",
                "Qty Supplied",
                'Del. Date',
                "Inv. No. & Date",
                "Payment Received  Date",
                'Coordinator Name ',
                "Remarks",
              ], context),
              buildRow([
                '12',
                "423",
                'vdfsd',
                "sdfg",
                "sdf",
                'sd of Job',
                " Order sdf",
                'Rate',
                "dfs Value",
                'Tax',
                "sdf. sdf dsf",
                "Qty sdfdf",
                'Del.sdffsdDate',
                "Inv. No. & Date",
                "sdf sdf  Date",
                'dsf Name ',
                "dfs",
              ], context),
            ],
          ),
        ),
      ),
    );
  }

  TableRow buildRow(List cells, context) => TableRow(
      children: cells
          .map((e) => InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                    return CreateOrderReg();
                  }));
                },
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: Center(child: Text(e)),
                ),
              ))
          .toList());
}
