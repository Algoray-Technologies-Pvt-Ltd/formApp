import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/Material_Required_Form/bloc/material_required_form_bloc.dart';
import 'package:formapp/Material_Required_Form/view/widgets/materialreqDate.dart';

import '../../main.dart';
import '../../widgets/ktextFeild.dart';

class CreateMaterialRequiredForm extends StatelessWidget {
  const CreateMaterialRequiredForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Material Required Form'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          context.read<MaterialRequiredFormBloc>().add(SaveEvent());
        },
        child: const Icon(Icons.save),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          child: Wrap(
            alignment: WrapAlignment.spaceBetween,
            children: [
              KTextField(
                onChanged: (value) {
                  context
                      .read<MaterialRequiredFormBloc>()
                      .add(PONumberEvent(poNumber: value));
                },
                initialText: '',
                hintText: 'PO.No',
              ),
              KTextField(
                onChanged: (value) {
                  context
                      .read<MaterialRequiredFormBloc>()
                      .add(SlNumberEvent(slNumber: value));
                },
                initialText: '',
                hintText: 'Sl.No',
              ),
              KTextField(
                onChanged: (value) {
                  context
                      .read<MaterialRequiredFormBloc>()
                      .add(CustomerNameEvent(customerName: value));
                },
                initialText: '',
                hintText: 'Customer Name',
              ),
              const MaterialReqDate(),
              KTextField(
                onChanged: (value) {
                  context.read<MaterialRequiredFormBloc>().add(
                      MaterialDescriptionEvent(materialDescription: value));
                },
                initialText: '',
                hintText: 'Material Description',
              ),
              KTextField(
                onChanged: (value) {
                  int inHand = int.tryParse(value) ?? 0;

                  context
                      .read<MaterialRequiredFormBloc>()
                      .add(InHandEvent(inHand: inHand));
                },
                initialText: '',
                hintText: 'In Hand',
              ),
              KTextField(
                onChanged: (value) {
                  int requiredQuantity = int.tryParse(value) ?? 0;

                  context.read<MaterialRequiredFormBloc>().add(
                      RequiredQuantityEvent(
                          requiredQuantity: requiredQuantity));
                },
                initialText: '',
                hintText: 'Req. Qty',
              ),
              KTextField(
                onChanged: (value) {
                  int issuedQuantity = int.tryParse(value) ?? 0;

                  context
                      .read<MaterialRequiredFormBloc>()
                      .add(IssuedQuantityEvent(issuedQuantity: issuedQuantity));
                },
                initialText: '',
                hintText: 'Issued Qty',
              ),
              KTextField(
                onChanged: (value) {
                  context
                      .read<MaterialRequiredFormBloc>()
                      .add(RemarksEvent(remarks: value));
                },
                initialText: '',
                hintText: 'Remarks',
              ),
              KTextField(
                onChanged: (value) {
                  context
                      .read<MaterialRequiredFormBloc>()
                      .add(RequisitionedByEvent(requisitionedBy: value));
                },
                initialText: '',
                hintText: 'Requisitioned By',
              ),
              KTextField(
                onChanged: (value) {
                  context
                      .read<MaterialRequiredFormBloc>()
                      .add(SkSignEvent(skSign: value));
                },
                initialText: '',
                hintText: 'Sk Sign',
              ),
              KTextField(
                onChanged: (value) {
                  context
                      .read<MaterialRequiredFormBloc>()
                      .add(PeSignEvent(peSign: value));
                },
                initialText: '',
                hintText: 'PE Sign',
              ),
            ],
          ),
        ),
      ),
    );
  }
}