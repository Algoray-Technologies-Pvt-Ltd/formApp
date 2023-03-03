import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/Gate_Outward_Register/bloc/gate_outward_register_bloc.dart';
import 'package:intl/intl.dart';


class GatePassDate extends StatelessWidget {
  const GatePassDate({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController gateInwardDateController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(8),
      child: SizedBox(
        width: 400,
        child: Builder(
          builder: (context) {
            return TextFormField(
              controller: gateInwardDateController
                ..text = context.select((GateOutwardRegisterBloc value) =>
                    value.state.gateOutwardRegisterModel?.gatePassDate != null
                        ? DateFormat('yyyy-MM-dd').format(
                            value.state.gateOutwardRegisterModel!.gatePassDate!)
                        : ''),
              decoration: InputDecoration(
                fillColor: Colors.white,
                hintText: 'Date',
                label: const Text('Date'),
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16 * 0.75),
                  child: Icon(
                    Icons.calendar_month,
                    color: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .color!
                        .withOpacity(0.3),
                  ),
                ),
              ),
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
                      .add(GatePassDateEvent(gatePassDate: selectedDate));
                } else {
                  print('error');
                }
              },
              readOnly: true,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please Select Date';
                }
                return null;
              },
            );
          },
        ),
      ),
    );
  }
}
