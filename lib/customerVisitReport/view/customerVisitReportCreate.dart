import 'package:flutter/material.dart';
import 'package:formapp/customerVisitReport/view/widget/tickFeilds.dart';
import 'package:formapp/widgets/ktextFeild.dart';

class CustomerVisitReportCreate extends StatelessWidget {
  const CustomerVisitReportCreate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text('Save Customer Details'),
                  )),
            ),
          ],
          elevation: 0,
          title: Text('Create Customer Details'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Wrap(children: [
          KTextField(
            initialText: '',
            hintText: 'Customer Name',
          ),
          KTextField(
            initialText: '',
            hintText: 'Co-ordinator',
          ),
          EnquiryApprovalWidget(),
          OrderAuditWidget(),
          KTextField(
            multiline: true,
            initialText: '',
            hintText: 'Customer Visit Details',
          ),
          KTextField(
            multiline: true,
            initialText: '',
            hintText: 'Feedback / Follow-up Details',
          ),
          KTextField(
            multiline: true,
            initialText: '',
            hintText: 'Remarks',
          ),
        ])));
  }
}
