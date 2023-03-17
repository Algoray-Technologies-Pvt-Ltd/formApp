import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:formapp/Daily_Stock_Statement/bloc/daily_stock_statement_bloc.dart';
import 'package:formapp/customerOrderReg/bloc/bloc/customer_order_reg_bloc.dart';
import 'package:formapp/model/HiveModels/InventoryItems/InvetoryItemDataModel.dart';

class CorDescription extends StatefulWidget {
  const CorDescription({super.key});

  @override
  State<CorDescription> createState() => _CorDescriptionState();
}

TextEditingController phoneNo = TextEditingController();

class _CorDescriptionState extends State<CorDescription> {
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
                phoneNo.text = suggestion.toString();
                context.read<DailyStockStatementBloc>().add(DescriptionEvent(
                    description: phoneNo.text, uid: suggestion.id));
              },
              textFieldConfiguration: TextFieldConfiguration(
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  label: Text('Description'),
                  hintText: 'Description',
                  fillColor: Colors.white,
                ),
                controller: phoneNo,
              ),
              suggestionsCallback: (pattern) {
                return getSuggestionsItems(pattern, context);
              },
              itemBuilder: (context, suggestion) {
                return ListTile(title: Text(suggestion.name));
              },

              // onSaved: (value) => phoneNo.text = value!,
            )));
  }
}

List<SuggestionItem> getSuggestionsItems(String query, BuildContext context) {
  final List<InventoryItemHive?>? matches =
      context.read<CustomerOrderRegBloc>().state.allitems;

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

class SuggestionItem {
  final String id;
  final String name;

  SuggestionItem({required this.id, required this.name});

  @override
  String toString() {
    return name;
  }
}
