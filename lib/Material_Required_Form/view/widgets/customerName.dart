import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:formapp/Material_Required_Form/bloc/material_required_form_bloc.dart';
import 'package:formapp/model/allLedgerModel.dart';

import '../../../Daily_Stock_Statement/view/widgets/description.dart';
import '../../../model/Ledgers/LedMasterHiveModel.dart';

class CustomerName extends StatefulWidget {
  const CustomerName({super.key});

  @override
  State<CustomerName> createState() => _CustomerNameState();
}

TextEditingController phoneNo = TextEditingController();

class _CustomerNameState extends State<CustomerName> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
            width: 400,
            child: TypeAheadFormField(
              onSuggestionSelected: (suggestion) {
                phoneNo.text = suggestion.toString();
                context.read<MaterialRequiredFormBloc>().add(CustomerNameEvent(
                      customerName: phoneNo.text,
                      uid: suggestion.id,
                    ));
              },
              textFieldConfiguration: TextFieldConfiguration(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  label: const Text('Customer Name'),
                  hintText: 'Customer Name',
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
  final List<LedgerMasterHiveModel?>? matches =
      context.read<MaterialRequiredFormBloc>().state.allledger;

  if (matches == null) {
    return [];
  }

  final List<SuggestionItem> matchingNames = matches
      .where((item) =>
          item != null &&
          item.Ledger_Name != null &&
          item.Ledger_Name!.toLowerCase().contains(query.toLowerCase()))
      .map((item) => SuggestionItem(
          id: item!.LEDGER_ID.toString(), name: item.Ledger_Name!))
      .toList();

  return matchingNames;
}
