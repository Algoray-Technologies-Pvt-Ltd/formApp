import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/customerComplaintReg/view/widget/ActionDateWidget.dart';
import 'package:formapp/customerComplaintReg/view/widget/InformDateWidget.dart';
import 'package:formapp/customerComplaintReg/view/widget/IsInformedWidget.dart';
import 'package:formapp/customerComplaintReg/view/widget/customernameWidget.dart';
import 'package:formapp/main.dart';

import 'package:formapp/widgets/ktextFeild.dart';

import '../bloc/bloc/customer_complaint_reg_bloc.dart';

class CreateComplainrReg extends StatelessWidget {
  const CreateComplainrReg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          // context.read<CustomerComplaintRegBloc>().add(SaveEvent());
          Navigator.of(context).pop();
        },
        child: const Icon(Icons.save),
      ),
      appBar: AppBar(
        elevation: 0,
        title: Text('Register Customer Complaint '),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Wrap(children: [
          CustomerComplaintNmaeWidget(),
          KTextField(
            initialText: '',
            hintText: 'Address',
            onChanged: (value) {
              // context
              //     .read<CustomerComplaintRegBloc>()
              //     .add(AddressEvent(formName: value));
            },
          ),
          KTextField(
            onChanged: (value) {
              context
                  .read<CustomerComplaintRegBloc>()
                  .add(NatureofComplaintEvent(NatureofComplaint: value));
            },
            initialText: '',
            hintText: 'Nature of Complaint',
          ),
          KTextField(
            onChanged: (value) {
              context
                  .read<CustomerComplaintRegBloc>()
                  .add(RootCauseEvent(RootCause: value));
            },
            initialText: '',
            hintText: 'Root Case',
          ),
          KTextField(
            onChanged: (value) {
              context
                  .read<CustomerComplaintRegBloc>()
                  .add(CorrectiveActionEvent(CorrectiveAction: value));
            },
            initialText: '',
            hintText: 'Corrective Action',
          ),
          KTextField(
            onChanged: (value) {
              context
                  .read<CustomerComplaintRegBloc>()
                  .add(PreventiveActionEvent(PreventiveAction: value));
            },
            initialText: '',
            hintText: 'Preventive Action',
          ),
          ActionDateWidget(),
          IsInformedWidget(),
          KTextField(
            onChanged: (value) {
              context
                  .read<CustomerComplaintRegBloc>()
                  .add(InformDetailsEvent(InformDetails: value));
            },
            initialText: '',
            hintText: 'Inform to customer Details,',
          ),
          InformDateWidget(),
          KTextField(
            onChanged: (value) {
              context
                  .read<CustomerComplaintRegBloc>()
                  .add(RemarksEvent(remarks: value));
            },
            initialText: '',
            hintText: 'Remarks',
          ),
        ]),
      ),
    );
  }
}
