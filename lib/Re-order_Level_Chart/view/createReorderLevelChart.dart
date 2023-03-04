import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/Re-order_Level_Chart/bloc/re_order_level_chart_bloc.dart';

import '../../main.dart';
import '../../widgets/ktextFeild.dart';

class CreateReorderLevelChart extends StatelessWidget {
  const CreateReorderLevelChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Re-order Level Chart'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          context.read<ReOrderLevelChartBloc>().add(SaveEvent());
        },
        child: const Icon(Icons.save),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          child: Wrap(
            alignment: WrapAlignment.spaceBetween,
            children: [
              KTextField(
                onChanged: (value) {
                  context
                      .read<ReOrderLevelChartBloc>()
                      .add(SlNumberEvent(slNumber: value));
                },
                initialText: '',
                hintText: 'Sl.No',
              ),
              KTextField(
                onChanged: (value) {
                  context
                      .read<ReOrderLevelChartBloc>()
                      .add(DescriptionEvent(description: value));
                },
                initialText: '',
                hintText: 'Description',
              ),
              KTextField(
                onChanged: (value) {
                  context
                      .read<ReOrderLevelChartBloc>()
                      .add(MinimumEvent(minimum: value));
                },
                initialText: '',
                hintText: 'Minimum',
              ),
              KTextField(
                onChanged: (value) {
                  context
                      .read<ReOrderLevelChartBloc>()
                      .add(MaximumEvent(maximum: value));
                },
                initialText: '',
                hintText: 'Maximum',
              ),
              KTextField(
                onChanged: (value) {
                  context
                      .read<ReOrderLevelChartBloc>()
                      .add(RemarksEvent(remarks: value));
                },
                initialText: '',
                hintText: 'Remarks',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
