import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/Gate_Outward_Register/bloc/gate_outward_register_bloc.dart';
import 'package:formapp/widgets/kDateSet.dart';
import 'package:intl/intl.dart';

import '../../bloc/goods_reciept_note_bloc.dart';

class GRNDate extends StatelessWidget {
  const GRNDate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController grnDateController = TextEditingController();
    return KDateSet(
      label: const Text('GRN Date'),
      controller: grnDateController
        ..text = context.select((GoodsRecieptNoteBloc value) =>
            value.state.grnModel?.grnDate != null
                ? DateFormat('yyyy-MM-dd').format(
                    value.state.grnModel!.grnDate!)
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
              .read<GoodsRecieptNoteBloc>()
              .add(GrnDateEvent(grnDate: selectedDate));
        } else {
          print('error');
        }
      },
    );
  }
}
