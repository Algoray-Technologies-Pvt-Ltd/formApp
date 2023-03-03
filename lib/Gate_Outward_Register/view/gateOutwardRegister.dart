import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/Gate_Inward_Register/bloc/gate_inward_register_bloc.dart';
import 'package:formapp/Gate_Outward_Register/bloc/gate_outward_register_bloc.dart';
import 'package:formapp/Gate_Outward_Register/view/createGateOutwardRegister.dart';

import '../../main.dart';

class GateOutwardRegisterScreen extends StatelessWidget {
  const GateOutwardRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gate Outward Register'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          // context.read<GateInwardRegisterBloc>().add(FetchingEvent());
          Navigator.of(context).push(MaterialPageRoute(builder: (contex) {
            return BlocProvider.value(
              value: context.read<GateOutwardRegisterBloc>(),
              child: const CreateGateOutwardRegister(),
            );
          }));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
