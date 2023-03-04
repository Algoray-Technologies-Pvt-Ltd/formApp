import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/Gate_Outward_Register/bloc/gate_outward_register_bloc.dart';
import 'package:formapp/Gate_Outward_Register/view/widgets/gateOutwardDateTime.dart';
import '../../main.dart';
import '../../widgets/ktextFeild.dart';
import 'widgets/gatePassDate.dart';

class CreateGateOutwardRegister extends StatelessWidget {
  const CreateGateOutwardRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Gate Outward Register'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          context.read<GateOutwardRegisterBloc>().add(SaveEvent());
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
                      .read<GateOutwardRegisterBloc>()
                      .add(GateOutwardNumberEvent(gateOutwardNumber: value));
                },
                initialText: '',
                hintText: 'GO.No',
              ),
              const GateOutwardDateTime(),
              KTextField(
                onChanged: (value) {
                  context
                      .read<GateOutwardRegisterBloc>()
                      .add(GatePassNumberEvent(gatePassNumber: value));
                },
                initialText: '',
                hintText: 'GP.No',
              ),
              const GatePassDate(),
              KTextField(
                onChanged: (value) {
                  context
                      .read<GateOutwardRegisterBloc>()
                      .add(ToEvent(to: value));
                },
                initialText: '',
                hintText: 'To',
              ),
              KTextField(
                onChanged: (value) {
                  context
                      .read<GateOutwardRegisterBloc>()
                      .add(ModeOfTransportEvent(modeOfTransport: value));
                },
                initialText: '',
                hintText: 'Mode Of Transport',
              ),
              KTextField(
                onChanged: (value) {
                  context
                      .read<GateOutwardRegisterBloc>()
                      .add(VehicleNumberEvent(vehicleNumber: value));
                },
                initialText: '',
                hintText: 'Vehicle Number',
              ),
              KTextField(
                onChanged: (value) {
                  context
                      .read<GateOutwardRegisterBloc>()
                      .add(DescriptionEvent(description: value));
                },
                initialText: '',
                hintText: 'Description',
              ),
              KTextField(
                onChanged: (value) {
                  int quantity = int.tryParse(value) ?? 0;
                  context
                      .read<GateOutwardRegisterBloc>()
                      .add(QuantityEvent(quantity: quantity));
                },
                initialText: '',
                hintText: 'Quantity',
              ),
              KTextField(
                onChanged: (value) {
                  context
                      .read<GateOutwardRegisterBloc>()
                      .add(PurposeEvent(purpose: value));
                },
                initialText: '',
                hintText: 'Purpose',
              ),
              KTextField(
                onChanged: (value) {
                  context
                      .read<GateOutwardRegisterBloc>()
                      .add(SignatureEvent(signature: value));
                },
                initialText: '',
                hintText: 'Signature',
              ),
              KTextField(
                onChanged: (value) {
                  context.read<GateOutwardRegisterBloc>().add(
                      ReturnableOrNonReturnableEvent(
                          returnableOrNonReturnable: value));
                },
                initialText: '',
                hintText: 'Returnable Or Non-Returnable',
              ),
              KTextField(
                onChanged: (value) {
                  context
                      .read<GateOutwardRegisterBloc>()
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
