import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:formapp/Daily_Stock_Statement/bloc/daily_stock_statement_bloc.dart';
import 'package:formapp/contractReview/bloc/bloc/contract_review_bloc.dart';
import 'package:formapp/enquiryCumQuatation/bloc/bloc/enquiry_cum_quatation_bloc.dart';
import 'package:formapp/model/HiveModels/InventoryItems/InvetoryItemDataModel.dart';
import 'package:formapp/model/Ledgers/LedMasterHiveModel.dart';

class DescriptionJob extends StatefulWidget {
  const DescriptionJob({super.key});

  @override
  State<DescriptionJob> createState() => _DescriptionJobState();
}

TextEditingController phoneNo = TextEditingController();

class _DescriptionJobState extends State<DescriptionJob> {
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
                context
                    .read<EnquiryCumQuatationBloc>()
                    .add(DescriptionofJobEvent(details: suggestion.toString()));
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
                return ListTile(title: Text(suggestion.toString()));
              },

              // onSaved: (value) => phoneNo.text = value!,
            )));
  }
}

List<String> getSuggestionsItems(String query, BuildContext context) {
  final List<InventoryItemHive?>? matches =
      context.read<EnquiryCumQuatationBloc>().state.allItems;

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
