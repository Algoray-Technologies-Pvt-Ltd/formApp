import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/contractReview/bloc/bloc/contract_review_bloc.dart';
import 'package:intl/intl.dart';

class ApprovelByDateWidget extends StatelessWidget {
  ApprovelByDateWidget({super.key});
  TextEditingController dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          width: 400,
          child: TextFormField(
            controller: dateController
              ..text = context.select((ContractReviewBloc bloc) =>
                  bloc.state.contractReview?.ApprovelByDate != null
                      ? DateFormat('yyyy-MM-dd')
                          .format(bloc.state.contractReview!.ApprovelByDate!)
                      : ''),
            decoration: InputDecoration(
              fillColor: Colors.white,
              hintText: 'ApprovelBy Date',
              label: Text('ApprovelBy Date'),
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
                    .read<ContractReviewBloc>()
                    .add(ApprovelDateEvent(approvedDate: selectedDate));

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
          )),
    );
  }
}
