import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/Material_Required_Form/bloc/material_required_form_bloc.dart';
import 'package:formapp/widgets/kDateSet.dart';
import 'package:intl/intl.dart';

class MaterialReqDate extends StatelessWidget {
  const MaterialReqDate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController materialReqController = TextEditingController();
    return KDateSet(
      label: const Text('Date'),
      controller: materialReqController
        ..text = context.select((MaterialRequiredFormBloc value) =>
            value.state.materialrequiredFormModel?.date != null
                ? DateFormat('yyyy-MM-dd')
                    .format(value.state.materialrequiredFormModel!.date!)
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
              .read<MaterialRequiredFormBloc>()
              .add(MDateEvent(mDate: selectedDate));
        } else {
          print('error');
        }
      },
    );
  }
}
