import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/enquiryReview/bloc/bloc/enquiry_review_bloc.dart';
import 'package:intl/intl.dart';

class EnquiryRecDateWidget extends StatelessWidget {
  EnquiryRecDateWidget({super.key});
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
                  bloc.state.enquiryReview?.recDate != null
                      ? DateFormat('yyyy-MM-dd')
                          .format(bloc.state.enquiryReview!.recDate!)
                      : ''),
            decoration: InputDecoration(
              fillColor: Colors.white,
              hintText: 'Rec. Date',
              label: Text('Rec. Date'),
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
                    .read<EnquiryReviewBloc>()
                    .add(RecDateEvent(RecDate: selectedDate));

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
