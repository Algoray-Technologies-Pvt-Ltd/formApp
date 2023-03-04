import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/Issue&Return_Register/bloc/issue_and_return_register_bloc.dart';
import 'package:formapp/widgets/kDateSet.dart';
import 'package:intl/intl.dart';

class IssueDate extends StatelessWidget {
  const IssueDate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController issueDateController = TextEditingController();
    return KDateSet(
      label: const Text('Issue Date'),
      controller: issueDateController
        ..text = context.select((IssueAndReturnRegisterBloc value) =>
            value.state.issueAndReturnRegisterModel?.issueDate != null
                ? DateFormat('yyyy-MM-dd')
                    .format(value.state.issueAndReturnRegisterModel!.issueDate!)
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
              .read<IssueAndReturnRegisterBloc>()
              .add(IssueDateEvent(issueDate: selectedDate));
        } else {
          print('error');
        }
      },
    );
  }
}
