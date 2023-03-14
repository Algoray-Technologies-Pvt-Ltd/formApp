import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/main.dart';
import 'package:formapp/marketingVisitReport/bloc/bloc/marketing_visit_report_bloc.dart';
import 'package:formapp/marketingVisitReport/view/widget/CheckBoxFeilds.dart';
import 'package:formapp/marketingVisitReport/view/widget/customerName.dart';
import 'package:formapp/widgets/ktextFeild.dart';

class MarketVisitReportCreate extends StatelessWidget {
  const MarketVisitReportCreate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: primaryColor,
          onPressed: () {
            context.read<MarketingVisitReportBloc>().add(SaveEvent());
            Navigator.of(context).pop();
          },
          child: const Icon(Icons.save),
        ),
        appBar: AppBar(
          elevation: 0,
          title: Text('Create Marketing Visit Details'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Wrap(children: [
          CustomerMvNmaeWidget(), 
          KTextField(
            onChanged: (value) {
              context
                  .read<MarketingVisitReportBloc>()
                  .add(PersonMeetEvent(personMeet: value));
            },
            initialText: '',
            hintText: 'Person Meet',
          ),
          EnquiryNegotationApprovalWidget(),
          AmendmentPaymentWidget(),
          KTextField(
            onChanged: (value) {
              context
                  .read<MarketingVisitReportBloc>()
                  .add(DetailsMeetingEvent(detailsMeeting: value));
            },
            multiline: true,
            initialText: '',
            hintText: 'Details of Meeting',
          ),
          KTextField(
            onChanged: (value) {
              context
                  .read<MarketingVisitReportBloc>()
                  .add(FollowupDetailsEvent(followupDetails: value));
            },
            multiline: true,
            initialText: '',
            hintText: 'Follow-up Details',
          ),
          KTextField(
            onChanged: (value) {
              context
                  .read<MarketingVisitReportBloc>()
                  .add(RemarksEvent(Remarks: value));
            },
            multiline: true,
            initialText: '',
            hintText: 'Remarks',
          ),
        ])));
  }
}
