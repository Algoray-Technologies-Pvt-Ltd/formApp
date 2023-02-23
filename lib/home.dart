import 'package:flutter/material.dart';
import 'package:formapp/contractReview/view/contractReviewScreen.dart';
import 'package:formapp/customerOrderReg/view/customerOrderReg.dart';
import 'package:formapp/customerVisitReport/view/customerVisitReport.dart';
import 'package:formapp/enquiryCumQuatation/view/enquiryCumQuatation.dart';
import 'package:formapp/enquiryReview/view/enquiryReview.dart';
import 'package:formapp/marketingVisitReport/view/marketingVisitReport.dart';

import 'customerComplaintReg/view/CustomerComplaintRegScreen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              color: Color.fromARGB(255, 187, 229, 250),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                  return ContractReviewScreen();
                }));
              },
              child: Text('ContractReview'),
            ),
            MaterialButton(
              color: Color.fromARGB(255, 187, 229, 250),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                  return CustomerComplaintRegScreen();
                }));
              },
              child: Text('CustomerComplaintReg'),
            ),
            MaterialButton(
              color: Color.fromARGB(255, 187, 229, 250),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                  return CustomerOrderRegScreen();
                }));
              },
              child: Text('CustomerOrderRegScreen'),
            ),
            MaterialButton(
              color: Color.fromARGB(255, 187, 229, 250),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                  return customerVisitReportScreen();
                }));
              },
              child: Text('customerVisitReport'),
            ),
            MaterialButton(
              color: Color.fromARGB(255, 187, 229, 250),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                  return EnquiryCumQuatationScreen();
                }));
              },
              child: Text('enquiryCumQuatation'),
            ),
            MaterialButton(
              color: Color.fromARGB(255, 187, 229, 250),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                  return EnquiryReviewScreen();
                }));
              },
              child: Text('enquiryReview'),
            ),
            MaterialButton(
              color: Color.fromARGB(255, 187, 229, 250),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                  return MarketingVisitReportScreen();
                }));
              },
              child: Text('MarketingVisitReport'),
            )
          ],
        ),
      ),
    );
  }
}
