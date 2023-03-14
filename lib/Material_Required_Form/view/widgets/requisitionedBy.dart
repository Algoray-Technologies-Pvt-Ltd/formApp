import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:formapp/Material_Required_Form/bloc/material_required_form_bloc.dart';
import 'package:formapp/model/HiveModels/InventoryItems/InvetoryItemDataModel.dart';

import '../../../model/Employee/EmployeeHiveModel.dart';

class RequisitionedBy extends StatefulWidget {
  const RequisitionedBy({super.key});

  @override
  State<RequisitionedBy> createState() => _RequisitionedByState();
}

TextEditingController desc = TextEditingController();

class _RequisitionedByState extends State<RequisitionedBy> {
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
                desc.text = suggestion.toString();
                context
                    .read<MaterialRequiredFormBloc>()
                    .add(RequisitionedByEvent(requisitionedBy: desc.text));
              },
              textFieldConfiguration: TextFieldConfiguration(
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  label: Text('Requisitioned By'),
                  hintText: 'Requisitioned By',
                  fillColor: Colors.white,
                ),
                controller: desc,
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
      context.read<MaterialRequiredFormBloc>().state.allEmployees;

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
