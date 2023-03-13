import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:formapp/Material_Required_Form/bloc/material_required_form_bloc.dart';
import 'package:formapp/model/HiveModels/InventoryItems/InvetoryItemDataModel.dart';


class MaterialReqDescription extends StatefulWidget {
  const MaterialReqDescription({super.key});

  @override
  State<MaterialReqDescription> createState() => _MaterialReqDescriptionState();
}

TextEditingController desc = TextEditingController();

class _MaterialReqDescriptionState extends State<MaterialReqDescription> {
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
                    .add(MaterialDescriptionEvent(materialDescription: desc.text));
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

getSuggestionsItems(String query, BuildContext context) {
  List<InventoryItemHive?>? matches =
      context.read<MaterialRequiredFormBloc>().state.allItems;
  print('*****************');
  print(matches?.length);
  print('*****************');
  matches?.retainWhere(
      (s) => s!.Item_Name!.toLowerCase().contains(query.toLowerCase()));

  return matches?.map((e) => e?.Item_Name) ?? [];
}
