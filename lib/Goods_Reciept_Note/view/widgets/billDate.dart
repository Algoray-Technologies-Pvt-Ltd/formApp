import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/widgets/kDateSet.dart';
import 'package:intl/intl.dart';

import '../../bloc/goods_reciept_note_bloc.dart';

class BillDate extends StatelessWidget {
  const BillDate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController billDateController = TextEditingController();
    return KDateSet(
      label: const Text('Bill Date'),
      controller: billDateController
        ..text = context.select((GoodsRecieptNoteBloc value) =>
            value.state.grnModel?.billDate != null
                ? DateFormat('yyyy-MM-dd')
                    .format(value.state.grnModel!.billDate!)
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
              .add(BillDateEvent(billDate: selectedDate));
        } else {
          print('error');
        }
      },
    );
  }
}
