import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/customerVisitReport/bloc/bloc/customerVisitReport_bloc.dart';
import 'package:formapp/customerVisitReport/view/customerVisitReportCreate.dart';
import 'package:formapp/main.dart';

class customerVisitReportScreen extends StatelessWidget {
  const customerVisitReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customer Visit Report'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
            return BlocProvider.value(
                value: context.read<CustomerVisitReportBloc>(),
                child: CustomerVisitReportCreate());
          }));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
