import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/enquiryReview/bloc/bloc/enquiry_review_bloc.dart';
import 'package:intl/intl.dart';

class OfferDueTimeDateWidget extends StatelessWidget {
  OfferDueTimeDateWidget({super.key});
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
              ..text = context.select((EnquiryReviewBloc bloc) =>
                  bloc.state.enquiryReview?.OfferDueDate != null
                      ? DateFormat('yyyy-MM-dd   hh : mm')
                          .format(bloc.state.enquiryReview!.OfferDueDate!)
                      : ''),
            decoration: InputDecoration(
              fillColor: Colors.white,
              hintText: 'Offer Due Date & Time',
              label: Text('Offer Due Date & Time'),
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
              TimeOfDay? pickedTime = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
              );

              if (pickedDate != null) {
                DateTime selectedDate = DateTime(
                  pickedDate.year,
                  pickedDate.month,
                  pickedDate.day,
                  pickedTime!.hour,
                  pickedTime.minute,
                );
                context
                    .read<EnquiryReviewBloc>()
                    .add(OfferDueDateEvent(date: selectedDate));

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
