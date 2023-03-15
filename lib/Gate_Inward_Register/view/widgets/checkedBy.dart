import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import '../../../model/Employee/EmployeeHiveModel.dart';
import '../../bloc/gate_inward_register_bloc.dart';

class CheckedBy extends StatefulWidget {
  const CheckedBy({super.key});

  @override
  State<CheckedBy> createState() => _CheckedByState();
}

TextEditingController employee = TextEditingController();

class _CheckedByState extends State<CheckedBy> {
  // @override
  // void dispose() {
  //   phoneNo.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
            width: 400,
            child: TypeAheadFormField(
              onSuggestionSelected: (suggestion) {
                employee.text = suggestion.toString();
                context
                    .read<GateInwardRegisterBloc>()
                    .add(CheckedByEvent(checkedBy: employee.text));
              },
              textFieldConfiguration: TextFieldConfiguration(
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  label: Text('Checked By'),
                  hintText: 'Checked By',
                  fillColor: Colors.white,
                ),
                controller: employee,
              ),
              suggestionsCallback: (pattern) {
                return getSuggestionsItems(pattern, context);
              },
              itemBuilder: (context, suggestion) {
                return ListTile(title: Text(suggestion.toString()));
              },

              // onSaved: (value) => phoneNo.text = value!,
            )));
  }
}

List<String> getSuggestionsItems(String query, BuildContext context) {
  final List<EmployeeHiveModel?>? matches =
      context.read<GateInwardRegisterBloc>().state.allEmployees;

  if (matches == null) {
    return [];
  }

  final List<String> matchingNames = matches
      .where((item) =>
          item != null &&
          item.UserName != null &&
          item.UserName!.toLowerCase().contains(query.toLowerCase()))
      .map((item) => item!.UserName!)
      .toList();

  return matchingNames;
}
