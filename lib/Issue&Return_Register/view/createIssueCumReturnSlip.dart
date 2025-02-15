import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/Issue&Return_Register/bloc/issue_and_return_register_bloc.dart';
import 'package:formapp/Issue&Return_Register/view/widgets/issueCumDescription.dart';
import 'package:formapp/Issue&Return_Register/view/widgets/returnDate.dart';

import '../../main.dart';
import '../../widgets/KAutoDateSet.dart';
import '../../widgets/KAutoText.dart';
import '../../widgets/KNumberTextField.dart';
import '../../widgets/kautoGenerateTextField.dart';
import '../../widgets/ktextFeild.dart';
import 'widgets/issueDate.dart';

class CreateIssueCumReturnSlip extends StatelessWidget {
  const CreateIssueCumReturnSlip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Issue Cum Return Slip'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          context.read<IssueAndReturnRegisterBloc>().add(SaveEvent());
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
                                .read<IssueAndReturnRegisterBloc>()
                                .add(SlNumberEvent(slNumber: value));
                          },
                          initialText: '',
                          hintText: 'Sl.No',
                        ),
                        const IssueCumDescription(),
                        // KTextField(
                        //   onChanged: (value) {
                        //     context.read<IssueAndReturnRegisterBloc>().add(
                        //         MaterialDescriotionEvent(materialDescriotion: value));
                        //   },
                        //   initialText: '',
                        //   hintText: 'Material Description',
                        // ),
                        const IssueDate(),
                        KNumberTextField(
                          onChanged: (value) {
                            int issueQty = int.tryParse(value) ?? 0;
                            context
                                .read<IssueAndReturnRegisterBloc>()
                                .add(IssueQtyEvent(issueQty: issueQty));
                          },
                          initialText: '',
                          hintText: 'Issue Qty',
                        ),
                        KTextField(
                          onChanged: (value) {
                            context
                                .read<IssueAndReturnRegisterBloc>()
                                .add(IssueToEvent(issueTo: value));
                          },
                          initialText: '',
                          hintText: 'Issue To',
                        ),
                        const ReturnDate(),
                        KNumberTextField(
                          onChanged: (value) {
                            int returnQty = int.tryParse(value) ?? 0;

                            context
                                .read<IssueAndReturnRegisterBloc>()
                                .add(ReturnQtyEvent(returnQty: returnQty));
                          },
                          initialText: '',
                          hintText: 'Return Qty',
                        ),
                        KTextField(
                          onChanged: (value) {
                            context
                                .read<IssueAndReturnRegisterBloc>()
                                .add(ReturnByEvent(returnBy: value));
                          },
                          initialText: '',
                          hintText: 'Return By',
                        ),
                        KTextField(
                          onChanged: (value) {
                            context
                                .read<IssueAndReturnRegisterBloc>()
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
