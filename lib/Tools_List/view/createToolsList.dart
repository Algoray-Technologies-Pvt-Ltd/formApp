import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/Tools_List/bloc/tools_list_bloc.dart';

import '../../main.dart';
import '../../widgets/KAutoText.dart';
import '../../widgets/ktextFeild.dart';
import 'widgets/toolsListDescription.dart';

class CreateToolsList extends StatelessWidget {
  const CreateToolsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Tools List'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          context.read<ToolsListBloc>().add(SaveEvent());
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
                        KTextField(
                          onChanged: (value) {
                            context
                                .read<ToolsListBloc>()
                                .add(SlNumberEvent(slNumber: value));
                          },
                          initialText: '',
                          hintText: 'Sl.No',
                        ),
                        const ToolsListDescription(),
                        // KTextField(
                        //   onChanged: (value) {
                        //     context
                        //         .read<ToolsListBloc>()
                        //         .add(DescriptionEvent(description: value));
                        //   },
                        //   initialText: '',
                        //   hintText: 'Description',
                        // ),
                        KTextField(
                          onChanged: (value) {
                            context
                                .read<ToolsListBloc>()
                                .add(SizeEvent(size: value));
                          },
                          initialText: '',
                          hintText: 'Size',
                        ),
                        KTextField(
                          onChanged: (value) {
                            int qty = int.tryParse(value) ?? 0;

                            context
                                .read<ToolsListBloc>()
                                .add(QuantityEvent(qty: qty));
                          },
                          initialText: '',
                          hintText: 'Qty',
                        ),
                        KTextField(
                          onChanged: (value) {
                            context
                                .read<ToolsListBloc>()
                                .add(MakeEvent(make: value));
                          },
                          initialText: '',
                          hintText: 'Make',
                        ),
                        KTextField(
                          onChanged: (value) {
                            context
                                .read<ToolsListBloc>()
                                .add(RemarksEvent(remarks: value));
                          },
                          initialText: '',
                          hintText: 'Remark',
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
