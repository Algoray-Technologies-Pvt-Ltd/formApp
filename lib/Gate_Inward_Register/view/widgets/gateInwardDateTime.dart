import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/Gate_Inward_Register/bloc/gate_inward_register_bloc.dart';
import 'package:intl/intl.dart';

import '../../../widgets/kDateSet.dart';

class GateInwardDateTime extends StatelessWidget {
  const GateInwardDateTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController gateInwardDateController = TextEditingController();
    return KDateSet(
      label: const Text('GI. Date'),
      controller: gateInwardDateController
        ..text = context.select((GateInwardRegisterBloc value) =>
            value.state.gateInwardRegisterModel?.gateInwardDateTime != null
                ? DateFormat('yyyy-MM-dd').format(
                    value.state.gateInwardRegisterModel!.gateInwardDateTime!)
                : ''),
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2015, 8),
          lastDate: DateTime(2101),
        );
        if (pickedDate != null) {
          DateTime selectedDate = DateTime(
            pickedDate.year,
            pickedDate.month,
            pickedDate.day,
          );
          context
              .read<GateInwardRegisterBloc>()
              .add(GateInwardDateTimeEvent(gateInwardDateTime: selectedDate));
        } else {
          print('error');
        }
      },
    );
  }
}
