import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:formapp/model/HiveModels/InventoryItems/InvetoryItemDataModel.dart';

import '../../bloc/gate_outward_register_bloc.dart';

class GateOutwardDescription extends StatefulWidget {
  const GateOutwardDescription({super.key});

  @override
  State<GateOutwardDescription> createState() => _GateOutwardDescriptionState();
}

TextEditingController desc = TextEditingController();

class _GateOutwardDescriptionState extends State<GateOutwardDescription> {
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
                    .read<GateOutwardRegisterBloc>()
                    .add(DescriptionEvent(description: desc.text));
              },
              textFieldConfiguration: TextFieldConfiguration(
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  label: Text('Description'),
                  hintText: 'Description',
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
  final List<InventoryItemHive?>? matches =
      context.read<GateOutwardRegisterBloc>().state.allItems;

  if (matches == null) {
    return [];
  }

  final List<String> matchingNames = matches
      .where((item) =>
          item != null &&
          item.Item_Name != null &&
          item.Item_Name!.toLowerCase().contains(query.toLowerCase()))
      .map((item) => item!.Item_Name!)
      .toList();

  return matchingNames;
}
