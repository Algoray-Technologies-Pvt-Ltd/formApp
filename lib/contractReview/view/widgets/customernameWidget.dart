import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:formapp/contractReview/bloc/bloc/contract_review_bloc.dart';
import 'package:formapp/contractReview/model/contractReviewmodel.dart';
import 'package:formapp/model/Ledgers/LedMasterHiveModel.dart';
import 'package:formapp/model/allLedgerModel.dart';

class CustomerNmaeWidget extends StatefulWidget {
  CustomerNmaeWidget({super.key});

  @override
  State<CustomerNmaeWidget> createState() => _CustomerNmaeWidgetState();
}

TextEditingController phoneNo = TextEditingController();

class _CustomerNmaeWidgetState extends State<CustomerNmaeWidget> {
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
                    .read<ContractReviewBloc>()
                    .add(CustomerNameEvent(name: phoneNo.text));
              },
              textFieldConfiguration: TextFieldConfiguration(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
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
                return getSuggestions(pattern, context);
              },
              itemBuilder: (context, suggestion) {
                return ListTile(title: Text(suggestion.toString()));
              },

              // onSaved: (value) => phoneNo.text = value!,
            )));
  }
}

getSuggestions(String query, BuildContext context) {
  List<LedgerMasterHiveModel?>? matches =
      context.read<ContractReviewBloc>().state.allledger;
  print('*****************');
  print(matches?.length);
  print('*****************');
  matches?.retainWhere(
      (s) => s!.Ledger_Name!.toLowerCase().contains(query.toLowerCase()));

  return matches?.map((e) => e?.Ledger_Name) ?? [];
}
