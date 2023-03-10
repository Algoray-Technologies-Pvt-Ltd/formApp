import 'package:flutter/material.dart';
import 'package:formapp/enquiryCumQuatation/view/widget/EnqDate.dart';
import 'package:formapp/enquiryCumQuatation/view/widget/EnqRecDate.dart';
import 'package:formapp/enquiryCumQuatation/view/widget/OrderRecivedDate.dart';
import 'package:formapp/enquiryCumQuatation/view/widget/QuoDueDate.dart';
import 'package:formapp/enquiryCumQuatation/view/widget/quoDate.dart';
import 'package:formapp/main.dart';
import 'package:formapp/widgets/ktextFeild.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/enquiryCumQuatation/bloc/bloc/enquiry_cum_quatation_bloc.dart';

class EnquiryCumQuatationCreate extends StatelessWidget {
  const EnquiryCumQuatationCreate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          context.read<EnquiryCumQuatationBloc>().add(SaveEvent());
          Navigator.of(context).pop();
        },
        child: const Icon(Icons.save),
      ),
      appBar: AppBar(
        elevation: 0,
        title: Text('Save Details'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Wrap(children: [
          EnqRecDateECQWidget(),
          KTextField(
            onChanged: (value) {
              context
                  .read<EnquiryCumQuatationBloc>()
                  .add(EnquiryNOEvent(enquiry: value));
            },
            initialText: '',
            hintText: 'Enq.No.',
          ),
          EnqDateECQWidget(),
          KTextField(
            onChanged: (value) {
              context
                  .read<EnquiryCumQuatationBloc>()
                  .add(ModeofEnquiryEvent(modeofEnquiry: value));
            },
            initialText: '',
            hintText: 'Mode of Enquiry',
          ),
          KTextField(
            onChanged: (value) {
              context
                  .read<EnquiryCumQuatationBloc>()
                  .add(CoordinatorNameEvent(name: value));
            },
            initialText: '',
            hintText: 'Coordinator Name',
          ),
          KTextField(
            onChanged: (value) {
              context
                  .read<EnquiryCumQuatationBloc>()
                  .add(CustomerNameEvent(CustomerName: value));
            },
            initialText: '',
            hintText: 'Customer Name',
          ),
          KTextField(
            onChanged: (value) {
              context
                  .read<EnquiryCumQuatationBloc>()
                  .add(DescriptionofJobEvent(details: value));
            },
            initialText: '',
            hintText: 'Description of Job',
          ),
          KTextField(
            onChanged: (value) {
              context
                  .read<EnquiryCumQuatationBloc>()
                  .add(EnqQtyEvent(qty: value));
            },
            initialText: '',
            hintText: 'Enq.Qty',
          ),
          KTextField(
            onChanged: (value) {
              context
                  .read<EnquiryCumQuatationBloc>()
                  .add(QuoNoEvent(number: value));
            },
            initialText: '',
            hintText: 'Quo.No',
          ),
          QuotationDateECQWidget(),
          QuotationDueDateECQWidget(),
          KTextField(
            onChanged: (value) {
              context
                  .read<EnquiryCumQuatationBloc>()
                  .add(ReasonQuoNotSentEvent(reason: value));
            },
            initialText: '',
            hintText: 'Reason if Quo.is Not Sent',
          ),
          OrderRecivedDateECQWidget(),
          KTextField(
            onChanged: (value) {
              context
                  .read<EnquiryCumQuatationBloc>()
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
