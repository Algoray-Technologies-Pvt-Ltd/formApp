import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:formapp/Issue&Return_Register/bloc/issue_and_return_register_bloc.dart';
import 'package:formapp/model/HiveModels/InventoryItems/InvetoryItemDataModel.dart';


class IssueCumDescription extends StatefulWidget {
  const IssueCumDescription({super.key});

  @override
  State<IssueCumDescription> createState() => _IssueCumDescriptionState();
}

TextEditingController desc = TextEditingController();

class _IssueCumDescriptionState extends State<IssueCumDescription> {
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
                    .read<IssueAndReturnRegisterBloc>()
                    .add(MaterialDescriotionEvent(materialDescriotion: desc.text));
              },
              textFieldConfiguration: TextFieldConfiguration(
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  label: Text('Material Description'),
                  hintText: 'Material Description',
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
      context.read<IssueAndReturnRegisterBloc>().state.allItems;

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
