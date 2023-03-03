import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/Gate_Inward_Register/bloc/gate_inward_register_bloc.dart';

import '../../main.dart';
import 'createGateInwardRegster.dart';

class GateInwardRegisterScreen extends StatelessWidget {
  const GateInwardRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gate Inward Register'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          // context.read<GateInwardRegisterBloc>().add(FetchingEvent());
          Navigator.of(context).push(MaterialPageRoute(builder: (contex) {
            return BlocProvider.value(
              value: context.read<GateInwardRegisterBloc>(),
              child: const CreateGateInwardRegister(),
            );
          }));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
