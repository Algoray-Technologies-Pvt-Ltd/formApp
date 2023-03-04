import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/customerVisitReport/bloc/bloc/customerVisitReport_bloc.dart';
import 'package:formapp/customerVisitReport/view/widget/tickFeilds.dart';
import 'package:formapp/main.dart';
import 'package:formapp/widgets/ktextFeild.dart';

class CustomerVisitReportCreate extends StatelessWidget {
  const CustomerVisitReportCreate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: primaryColor,
          onPressed: () {
            context.read<CustomerVisitReportBloc>().add(SaveEvent());
            Navigator.of(context).pop();
          },
          child: const Icon(Icons.save),
        ),
        appBar: AppBar(
          elevation: 0,
          title: Text('Create Customer Details'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Wrap(children: [
          KTextField(
            onChanged: (value) {
              context
                  .read<CustomerVisitReportBloc>()
                  .add(CustomerEvent(customer: value));
            },
            initialText: '',
            hintText: 'Customer Name',
          ),
          KTextField(
            onChanged: (value) {
              context
                  .read<CustomerVisitReportBloc>()
                  .add(CoordinatorEvent(coordinator: value));
            },
            initialText: '',
            hintText: 'Co-ordinator',
          ),
          EnquiryApprovalWidget(),
          OrderAuditWidget(),
          KTextField(
            onChanged: (value) {
              context
                  .read<CustomerVisitReportBloc>()
                  .add(CustomerVisitDetailsEvent(customerVisitDetails: value));
            },
            multiline: true,
            initialText: '',
            hintText: 'Customer Visit Details',
          ),
          KTextField(
            onChanged: (value) {
              context
                  .read<CustomerVisitReportBloc>()
                  .add(FeedbackEvent(feedback: value));
            },
            multiline: true,
            initialText: '',
            hintText: 'Feedback / Follow-up Details',
          ),
          KTextField(
            onChanged: (value) {
              context
                  .read<CustomerVisitReportBloc>()
                  .add(RemarksEvent(Remarks: value));
            },
            multiline: true,
            initialText: '',
            hintText: 'Remarks',
          ),
        ])));
  }
}
