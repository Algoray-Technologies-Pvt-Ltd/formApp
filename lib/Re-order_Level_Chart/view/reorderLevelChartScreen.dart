import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/Re-order_Level_Chart/bloc/re_order_level_chart_bloc.dart';
import 'package:formapp/Re-order_Level_Chart/view/createReorderLevelChart.dart';

import '../../main.dart';

class ReorderLevelChartScreen extends StatelessWidget {
  const ReorderLevelChartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reorder Level Chart'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          // context.read<ReOrderLevelChartBloc>().add(FetchingEvent());
          Navigator.of(context).push(MaterialPageRoute(builder: (contex) {
            return BlocProvider.value(
              value: context.read<ReOrderLevelChartBloc>(),
              child: const CreateReorderLevelChart(),
            );
          }));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
