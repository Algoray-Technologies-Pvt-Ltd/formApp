import 'package:flutter/material.dart';
import 'package:formapp/customerComplaintReg/view/widget/ActionDateWidget.dart';
import 'package:formapp/widgets/ktextFeild.dart';

class CreateComplainrReg extends StatelessWidget {
  const CreateComplainrReg({super.key});

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
                  child: Text('Register Complaint'),
                )),
          )
        ],
        elevation: 0,
        title: Text('Register Customer Complaint '),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Wrap(children: [
          KTextField(
            initialText: '',
            hintText: 'Name',
          ),
          KTextField(
            initialText: '',
            hintText: 'Address',
          ),
          KTextField(
            initialText: '',
            hintText: 'Nature of Complaint',
          ),
          KTextField(
            initialText: '',
            hintText: 'Root Case',
          ),
          KTextField(
            initialText: '',
            hintText: 'Corrective Action',
          ),
          KTextField(
            initialText: '',
            hintText: 'Preventive Action',
          ),
          ActionDateWidget(),
          KTextField(
            initialText: '',
            hintText: 'Inform to customer,',
          ),
          KTextField(
            initialText: '',
            hintText: 'Remarks',
          ),
        ]),
      ),
    );
  }
}
