import 'package:flutter/material.dart';
import 'package:formapp/enquiryCumQuatation/view/widget/EnqDate.dart';
import 'package:formapp/enquiryCumQuatation/view/widget/EnqRecDate.dart';
import 'package:formapp/enquiryCumQuatation/view/widget/OrderRecivedDate.dart';
import 'package:formapp/enquiryCumQuatation/view/widget/QuoDueDate.dart';
import 'package:formapp/enquiryCumQuatation/view/widget/quoDate.dart';
import 'package:formapp/widgets/ktextFeild.dart';

class EnquiryCumQuatationCreate extends StatelessWidget {
  const EnquiryCumQuatationCreate({super.key});

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
                  child: Text('Enquiry Cum Quatation Create'),
                )),
          )
        ],
        elevation: 0,
        title: Text('Save Details'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Wrap(children: [
          EnqRecDateECQWidget(),
          KTextField(
            initialText: '',
            hintText: 'Enq.No.',
          ),
          EnqDateECQWidget(),
          KTextField(
            initialText: '',
            hintText: 'Mode of Enquiry',
          ),
          KTextField(
            initialText: '',
            hintText: 'Coordinator Name',
          ),
          KTextField(
            initialText: '',
            hintText: 'Customer Name',
          ),
          KTextField(
            initialText: '',
            hintText: 'Description of Job',
          ),
          KTextField(
            initialText: '',
            hintText: 'Enq.Qty',
          ),
          KTextField(
            initialText: '',
            hintText: 'Quo.No',
          ),
          QuotationDateECQWidget(),
          QuotationDueDateECQWidget(),
          KTextField(
            initialText: '',
            hintText: 'Reason if Quo.is Not Sent',
          ),
          OrderRecivedDateECQWidget(),
          KTextField(
            initialText: '',
            hintText: 'Remarks',
          ),
        ]),
      ),
    );
  }
}
