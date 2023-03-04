import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/Issue&Return_Register/bloc/issue_and_return_register_bloc.dart';
import 'package:formapp/Issue&Return_Register/view/widgets/returnDate.dart';

import '../../main.dart';
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
        child: Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          child: Wrap(
            alignment: WrapAlignment.spaceBetween,
            children: [
              KTextField(
                onChanged: (value) {
                  context
                      .read<IssueAndReturnRegisterBloc>()
                      .add(SlNumberEvent(slNumber: value));
                },
                initialText: '',
                hintText: 'Sl.No',
              ),
              KTextField(
                onChanged: (value) {
                  context.read<IssueAndReturnRegisterBloc>().add(
                      MaterialDescriotionEvent(materialDescriotion: value));
                },
                initialText: '',
                hintText: 'Material Description',
              ),
              const IssueDate(),
              KTextField(
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
                hintText: 'Issue Qty',
              ),
              const ReturnDate(),
              KTextField(
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
    );
  }
}
