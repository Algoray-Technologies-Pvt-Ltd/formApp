// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:formapp/Daily_Stock_Statement/view/widgets/description.dart';
import 'package:formapp/customerOrderReg/bloc/bloc/customer_order_reg_bloc.dart';

import 'package:formapp/model/Employee/EmployeeHiveModel.dart';

class CoordinatorName extends StatefulWidget {
  @override
  State<CoordinatorName> createState() => _CoordinatorNameState();
}

TextEditingController textcontroller = TextEditingController();

class _CoordinatorNameState extends State<CoordinatorName> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            width: 400,
            child: TypeAheadFormField(
              textFieldConfiguration: TextFieldConfiguration(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  label: Text(' Coordinator Name  '),
                  hintText: ' Coordinator Name  ',
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
                context.read<CustomerOrderRegBloc>().add(CoordinatorNameEvent(
                    CoordinatorName: suggestion.name.toString(),
                    id: suggestion.id));
              },
              validator: (value) =>
                  value!.isEmpty ? 'Please select a city' : null,
              // onSaved: (value) => _selectedCity = value,
            )));
  }
}

List<SuggestionItem> getSuggestionsEmployee(
    String query, BuildContext context) {
  final List<EmployeeHiveModel?>? matches =
      context.read<CustomerOrderRegBloc>().state.allEmloyees;

  if (matches == null) {
    return [];
  }

  final List<SuggestionItem> matchingNames = matches
      .where((item) =>
          item != null &&
          item.UserName != null &&
          item.UserName != "" &&
          item.UserName!.toLowerCase().contains(query.toLowerCase()))
      .map((item) => SuggestionItem(
          id: item!.Employee_ID.toString(), name: item.UserName!))
      .toList();

  return matchingNames;
}
