import 'package:flutter/material.dart';
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
            return CustomerVisitReportCreate();
          }));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
