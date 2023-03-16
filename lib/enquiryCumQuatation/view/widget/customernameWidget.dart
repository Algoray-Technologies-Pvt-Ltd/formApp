import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

import 'package:formapp/enquiryCumQuatation/bloc/bloc/enquiry_cum_quatation_bloc.dart';

import 'package:formapp/model/Ledgers/LedMasterHiveModel.dart';

class CustomerEcqReNmaeWidget extends StatefulWidget {
  CustomerEcqReNmaeWidget({super.key});

  @override
  State<CustomerEcqReNmaeWidget> createState() =>
      _CustomerEcqReNmaeWidgetState();
}

TextEditingController phoneNo = TextEditingController();

class _CustomerEcqReNmaeWidgetState extends State<CustomerEcqReNmaeWidget> {
  // @override
  // void dispose() {
  //   phoneNo.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            width: 400,
            child: TypeAheadFormField(
              onSuggestionSelected: (suggestion) {
                phoneNo.text = suggestion.toString();
                context
                    .read<EnquiryCumQuatationBloc>()
                    .add(CustomerNameEvent(CustomerName: phoneNo.text));
              },
              textFieldConfiguration: TextFieldConfiguration(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  label: Text('Customer Name'),
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
                return getSuggestionscustomerEcqReReg(pattern, context);
              },
              itemBuilder: (context, suggestion) {
                return ListTile(title: Text(suggestion.toString()));
              },

              // onSaved: (value) => phoneNo.text = value!,
            )));
  }
}

getSuggestionscustomerEcqReReg(String query, BuildContext context) {
  final List<LedgerMasterHiveModel?>? matches =
      context.read<EnquiryCumQuatationBloc>().state.allLedger;

  if (matches == null) {
    return [];
  }

  final List<String> matchingNames = matches
      .where((item) =>
          item != null &&
          item.Ledger_Name != null &&
          item.Ledger_Name!.toLowerCase().contains(query.toLowerCase()))
      .map((item) => item!.Ledger_Name!)
      .toList();

  return matchingNames;
}
