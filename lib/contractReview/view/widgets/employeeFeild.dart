import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:formapp/contractReview/bloc/bloc/contract_review_bloc.dart';
import 'package:formapp/model/Employee/EmployeeHiveModel.dart';

class ReviewedByWidget extends StatelessWidget {
  ReviewedByWidget({super.key});
  TextEditingController Employeename = TextEditingController();
  @override
  Widget build(BuildContext context) {
    if (Employeename.text.isEmpty) Employeename.clear();
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            width: 400,
            child: TypeAheadFormField(
              textFieldConfiguration: TextFieldConfiguration(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  label: Text('Reviewed By'),
                  hintText: 'Reviewed By',
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16 * 0.75),
                    child: Icon(
                      Icons.person,
                      color: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .color!
                          .withOpacity(0.3),
                    ),
                  ),
                ),
                controller: Employeename,
              ),
              suggestionsCallback: (pattern) {
                return getSuggestionsEmployee(pattern, context);
              },
              itemBuilder: (context, suggestion) {
                return ListTile(
                  title: Text(
                    suggestion.toString(),
                    style: TextStyle(color: Colors.black),
                  ),
                );
              },
              transitionBuilder: (context, suggestionsBox, controller) {
                return suggestionsBox;
              },
              onSuggestionSelected: (suggestion) {
                Employeename.text = suggestion.toString();
                context
                    .read<ContractReviewBloc>()
                    .add(ReviewedByEvent(reviewedBy: suggestion.toString()));
              },
              validator: (value) =>
                  value!.isEmpty ? 'Please select a city' : null,
              // onSaved: (value) => _selectedCity = value,
            )));
  }
}

getSuggestionsEmployee(String query, BuildContext context) {
  List<EmployeeHiveModel?>? matches =
      context.read<ContractReviewBloc>().state.allEmloyees;
  print('*****************');
  print(matches?.length);
  print('*****************');
  matches?.retainWhere(
      (s) => s!.Name!.toLowerCase().contains(query.toLowerCase()));

  return matches?.map((e) => e?.Name) ?? [];
}
