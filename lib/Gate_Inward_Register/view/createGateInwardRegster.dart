import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/Gate_Inward_Register/bloc/gate_inward_register_bloc.dart';

import '../../main.dart';
import '../../widgets/KAutoDateSet.dart';
import '../../widgets/KNumberTextField.dart';
import '../../widgets/kautoGenerateTextField.dart';
import '../../widgets/ktextFeild.dart';
import 'widgets/gateInwardDateTime.dart';
import 'widgets/gatePassDate.dart';
import 'widgets/returnorNonReturnable.dart';

class CreateGateInwardRegister extends StatelessWidget {
  const CreateGateInwardRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Gate Inward Register'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          context.read<GateInwardRegisterBloc>().add(SaveEvent());
        },
        child: const Icon(Icons.save),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          child: Wrap(
            // alignment: WrapAlignment.spaceBetween,
            children: [
              KAutoGeneratedNumberTextField(
                nextNumber: 201,
                initialText: '',
                hintText: 'FT No.',
                onChanged: (value) {
                  context
                      .read<GateInwardRegisterBloc>()
                      .add(FtNumberEvent(ftNumber: value));
                },
              ),
              KAutoGeneratedNumberTextField(
                nextNumber: 101,
                initialText: '',
                hintText: 'Rev No.',
                onChanged: (value) {
                  context
                      .read<GateInwardRegisterBloc>()
                      .add(RevNumberEvent(revNumber: value));
                },
              ),
              KAutoGeneratedNumberTextField(
                nextNumber: 1,
                initialText: '',
                hintText: 'Page No.',
                onChanged: (value) {
                  context
                      .read<GateInwardRegisterBloc>()
                      .add(PageNumberEvent(pageNumber: value));
                },
              ),
              const KAutoGeneratedDateTextField(
                label: Text('Date'),
              ),
              KAutoGeneratedNumberTextField(
                nextNumber: 1,
                onChanged: (value) {
                  context
                      .read<GateInwardRegisterBloc>()
                      .add(GateInwardNumberEvent(gateInwardNumber: value));
                },
                initialText: '',
                hintText: 'GI.No',
              ),
              const GateInwardDateTime(),
              KAutoGeneratedNumberTextField(
                nextNumber: 1,
                onChanged: (value) {
                  context
                      .read<GateInwardRegisterBloc>()
                      .add(GatePassNumberEvent(gatePassNumber: value));
                },
                initialText: '',
                hintText: 'GP.No',
              ),
              const GatePassDate(),
              KTextField(
                onChanged: (value) {
                  context
                      .read<GateInwardRegisterBloc>()
                      .add(FromEvent(from: value));
                },
                initialText: '',
                hintText: 'From',
              ),
              KTextField(
                onChanged: (value) {
                  context
                      .read<GateInwardRegisterBloc>()
                      .add(ModeOfTransportEvent(modeOfTransport: value));
                },
                initialText: '',
                hintText: 'Mode Of Transport',
              ),
              KTextField(
                onChanged: (value) {
                  context
                      .read<GateInwardRegisterBloc>()
                      .add(VehicleNumberEvent(vehicleNumber: value));
                },
                initialText: '',
                hintText: 'Vehicle Number',
              ),
              KTextField(
                onChanged: (value) {
                  context
                      .read<GateInwardRegisterBloc>()
                      .add(DescriptionEvent(description: value));
                },
                initialText: '',
                hintText: 'Description',
              ),
              KNumberTextField(
                onChanged: (value) {
                  int quantity = int.tryParse(value) ?? 0;
                  context
                      .read<GateInwardRegisterBloc>()
                      .add(QuantityEvent(quantity: quantity));
                },
                initialText: '',
                hintText: 'Quantity',
              ),
              KTextField(
                onChanged: (value) {
                  context
                      .read<GateInwardRegisterBloc>()
                      .add(PurposeEvent(purpose: value));
                },
                initialText: '',
                hintText: 'Purpose',
              ),
              KTextField(
                onChanged: (value) {
                  context
                      .read<GateInwardRegisterBloc>()
                      .add(CheckedByEvent(checkedBy: value));
                },
                initialText: '',
                hintText: 'Checked By',
              ),
              ReturnableOrNonReturnable(),
              KTextField(
                onChanged: (value) {
                  context
                      .read<GateInwardRegisterBloc>()
                      .add(RemarksEvent(remarks: value));
                },
                initialText: '',
                hintText: 'Remarks',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
