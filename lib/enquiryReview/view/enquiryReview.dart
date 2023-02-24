import 'package:flutter/material.dart';
import 'package:formapp/enquiryReview/view/createEnquiryReview.dart';
import 'package:formapp/main.dart';

class EnquiryReviewScreen extends StatelessWidget {
  const EnquiryReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enquiry Review'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
            return CreateEnquiryReview();
          }));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
