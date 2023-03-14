// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

import 'package:formapp/contractReview/bloc/bloc/contract_review_bloc.dart';
import 'package:formapp/model/Employee/EmployeeHiveModel.dart';

class ReviewedByWidget extends StatefulWidget {
  String initialText;
  ReviewedByWidget({
    Key? key,
    required this.initialText,
  }) : super(key: key);

  @override
  State<ReviewedByWidget> createState() => _ReviewedByWidgetState();
}

class _ReviewedByWidgetState extends State<ReviewedByWidget> {
  late TextEditingController textcontroller;

  @override
  void initState() {
    textcontroller = TextEditingController();
    textcontroller.text = widget.initialText;

    super.initState();
  }

  @override
  void dispose() {
    textcontroller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.initialText.isEmpty) {
      textcontroller.clear();
    }
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
                controller: textcontroller,
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
                textcontroller.text = suggestion.toString();
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

List<String> getSuggestionsEmployee(String query, BuildContext context) {
  final List<EmployeeHiveModel?>? matches =
      context.read<ContractReviewBloc>().state.allEmloyees;

  if (matches == null) {
    return [];
  }

  final List<String> matchingNames = matches
      .where((item) =>
          item != null &&
          item.UserName != null &&
          item.UserName != "" &&
          item.UserName!.toLowerCase().contains(query.toLowerCase()))
      .map((item) => item!.UserName!)
      .toList();

  return matchingNames;
}
