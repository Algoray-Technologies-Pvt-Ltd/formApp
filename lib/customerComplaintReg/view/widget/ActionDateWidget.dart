import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/customerComplaintReg/bloc/bloc/customer_complaint_reg_bloc.dart';
import 'package:intl/intl.dart';

class ActionDateWidget extends StatelessWidget {
  ActionDateWidget({super.key});
  TextEditingController dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 400,
        child: Builder(builder: (context) {
          return TextFormField(
            controller: dateController
              ..text = context.select((CustomerComplaintRegBloc bloc) =>
                  bloc.state.customerComplaintReg?.ActionDate != null
                      ? DateFormat('yyyy-MM-dd')
                          .format(bloc.state.customerComplaintReg!.ActionDate!)
                      : ''),
            decoration: InputDecoration(
              fillColor: Colors.white,
              label: Text('Action Date'),
              hintText: 'Action Date',
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

              // DateTime? pickedDate = await Showdat(
              //     context: context,
              //     initialDate: DateTime.now(),
              //     firstDate: DateTime(1947),
              //     lastDate: DateTime(2050));

              if (pickedDate != null) {
                DateTime selectedDate = DateTime(
                  pickedDate.year,
                  pickedDate.month,
                  pickedDate.day,
                );
                context
                    .read<CustomerComplaintRegBloc>()
                    .add(ActionDateEvent(ActionDate: selectedDate));

                print(" date:= ");
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
        }),
      ),
    );
  }
}
