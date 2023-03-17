import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:formapp/Daily_Stock_Statement/view/widgets/description.dart';
import 'package:formapp/customerOrderReg/bloc/bloc/customer_order_reg_bloc.dart';

import 'package:formapp/model/Ledgers/LedMasterHiveModel.dart';

class CustomerOrNmaeWidget extends StatefulWidget {
  CustomerOrNmaeWidget({super.key});

  @override
  State<CustomerOrNmaeWidget> createState() => _CustomerOrNmaeWidgetState();
}

TextEditingController phoneNo = TextEditingController();

class _CustomerOrNmaeWidgetState extends State<CustomerOrNmaeWidget> {
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
                context.read<CustomerOrderRegBloc>().add(CustomerNameEvent(
                    CustomerName: suggestion.name.toString(),
                    id: suggestion.id));
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
                return getSuggestionscustomerEQrReReg(pattern, context);
              },
              itemBuilder: (context, suggestion) {
                return ListTile(title: Text(suggestion.toString()));
              },

              // onSaved: (value) => phoneNo.text = value!,
            )));
  }
}

List<SuggestionItem> getSuggestionscustomerEQrReReg(
    String query, BuildContext context) {
  final List<LedgerMasterHiveModel?>? matches =
      context.read<CustomerOrderRegBloc>().state.allLedger;

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
