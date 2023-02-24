import 'package:flutter/material.dart';
import 'package:formapp/marketingVisitReport/view/widget/CheckBoxFeilds.dart';
import 'package:formapp/widgets/ktextFeild.dart';

class MarketVisitReportCreate extends StatelessWidget {
  const MarketVisitReportCreate({super.key});

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
                    child: Text('Save Details'),
                  )),
            ),
          ],
          elevation: 0,
          title: Text('Create Marketing Visit Details'),
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
            hintText: 'Person Meet',
          ),
          EnquiryNegotationApprovalWidget(),
          AmendmentPaymentWidget(),
          KTextField(
            multiline: true,
            initialText: '',
            hintText: 'Details of Meeting',
          ),
          KTextField(
            multiline: true,
            initialText: '',
            hintText: 'Follow-up Details',
          ),
          KTextField(
            multiline: true,
            initialText: '',
            hintText: 'Remarks',
          ),
        ])));
  }
}
