import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:formapp/Re-order_Level_Chart/bloc/re_order_level_chart_bloc.dart';
import 'package:formapp/model/HiveModels/InventoryItems/InvetoryItemDataModel.dart';

import '../../../Daily_Stock_Statement/view/widgets/description.dart';

class ReOrderDescription extends StatefulWidget {
  const ReOrderDescription({super.key});

  @override
  State<ReOrderDescription> createState() => _ReOrderDescriptionState();
}

TextEditingController desc = TextEditingController();

class _ReOrderDescriptionState extends State<ReOrderDescription> {
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
              context.read<ReOrderLevelChartBloc>().add(
                  DescriptionEvent(description: desc.text, uid: suggestion.id));
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
              return ListTile(title: Text(suggestion.name));
            },

            // onSaved: (value) => phoneNo.text = value!,
          ),
        ));
  }
}

List<SuggestionItem> getSuggestionsItems(String query, BuildContext context) {
  final List<InventoryItemHive?>? matches =
      context.read<ReOrderLevelChartBloc>().state.allItems;

  if (matches == null) {
    return [];
  }

  final List<SuggestionItem> matchingNames = matches
      .where((item) =>
          item != null &&
          item.Item_Name != null &&
          item.Item_Name!.toLowerCase().contains(query.toLowerCase()))
      .map((item) =>
          SuggestionItem(id: item!.Item_ID.toString(), name: item.Item_Name!))
      .toList();

  return matchingNames;
}
