import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/main.dart';
import 'package:formapp/marketingVisitReport/bloc/bloc/marketing_visit_report_bloc.dart';
import 'package:formapp/marketingVisitReport/view/marketVisitReportCreate.dart';

class MarketingVisitReportScreen extends StatelessWidget {
  const MarketingVisitReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Market Visit Report'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
            return BlocProvider.value(
                value: context.read<MarketingVisitReportBloc>(),
                child: MarketVisitReportCreate());
          }));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
