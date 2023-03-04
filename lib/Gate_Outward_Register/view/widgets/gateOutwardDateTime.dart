import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/Gate_Outward_Register/bloc/gate_outward_register_bloc.dart';
import 'package:formapp/widgets/kDateSet.dart';
import 'package:intl/intl.dart';

class GateOutwardDateTime extends StatelessWidget {
  const GateOutwardDateTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController gateOutwardDateController = TextEditingController();
    return KDateSet(
      label: const Text('Go. Date'),
      controller: gateOutwardDateController
        ..text = context.select((GateOutwardRegisterBloc value) =>
            value.state.gateOutwardRegisterModel?.gateOutwardDateTime != null
                ? DateFormat('yyyy-MM-dd').format(
                    value.state.gateOutwardRegisterModel!.gateOutwardDateTime!)
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
              .read<GateOutwardRegisterBloc>()
              .add(GateOutwardDateTimeEvent(gateOutwardDateTime: selectedDate));
        } else {
          print('error');
        }
      },
    );
  }
}
