import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/Re-order_Level_Chart/bloc/re_order_level_chart_bloc.dart';
import 'package:formapp/Re-order_Level_Chart/view/widgets/reOrderDescription.dart';
import '../../main.dart';
import '../../widgets/KAutoDateSet.dart';
import '../../widgets/KAutoText.dart';
import '../../widgets/KNumberTextField.dart';
import '../../widgets/kautoGenerateTextField.dart';
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 2, color: Colors.grey)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 6,
                    child: Table(
                      border: TableBorder.all(
                          color: Colors.grey,
                          width: 1.5,
                          borderRadius: BorderRadius.circular(5)),
                      columnWidths: const {
                        0: FlexColumnWidth(5),
                        1: FlexColumnWidth(5),
                      },
                      children: [
                        TableRow(children: [
                          const Text(
                            "FT No.",
                            style: TextStyle(fontSize: 15.0),
                          ),
                          AutoGeneratedText(autoGeneratedValue: 1),
                        ]),
                        TableRow(children: [
                          const Text(
                            "Rev No.",
                            style: TextStyle(fontSize: 15.0),
                          ),
                          AutoGeneratedText(autoGeneratedValue: 25),
                        ]),
                        TableRow(children: [
                          const Text(
                            "Page No.",
                            style: TextStyle(fontSize: 15.0),
                          ),
                          AutoGeneratedText(autoGeneratedValue: 2),
                        ]),
                        TableRow(children: [
                          const Text(
                            "Date",
                            style: TextStyle(fontSize: 15.0),
                          ),
                          Text(
                            "${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}",
                            style: const TextStyle(fontSize: 15.0),
                          ),
                        ]),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 2, color: Colors.grey)),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    child: Wrap(
                      // alignment: WrapAlignment.spaceBetween,
                      children: [
                        KAutoGeneratedNumberTextField(
                          nextNumber: 1,
                          onChanged: (value) {
                            context
                                .read<ReOrderLevelChartBloc>()
                                .add(SlNumberEvent(slNumber: value));
                          },
                          initialText: '',
                          hintText: 'Sl.No',
                        ),
                        const ReOrderDescription(),
                        // KTextField(
                        //   onChanged: (value) {
                        //     context
                        //         .read<ReOrderLevelChartBloc>()
                        //         .add(DescriptionEvent(description: value));
                        //   },
                        //   initialText: '',
                        //   hintText: 'Description',
                        // ),
                        KNumberTextField(
                          onChanged: (value) {
                            context
                                .read<ReOrderLevelChartBloc>()
                                .add(MinimumEvent(minimum: value));
                          },
                          initialText: '',
                          hintText: 'Minimum',
                        ),
                        KNumberTextField(
                          onChanged: (value) {
                            context
                                .read<ReOrderLevelChartBloc>()
                                .add(MaximumEvent(maximum: value));
                          },
                          initialText: '',
                          hintText: 'Maximum',
                        ),
                        KTextField(
                          multiline: true,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
