import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:formapp/Goods_Reciept_Note/bloc/goods_reciept_note_bloc.dart';
import 'package:formapp/contractReview/bloc/bloc/contract_review_bloc.dart';
import 'package:formapp/model/Ledgers/LedMasterHiveModel.dart';

class SupplierName extends StatefulWidget {
  SupplierName({super.key});

  @override
  State<SupplierName> createState() => _SupplierNameState();
}

TextEditingController ledger = TextEditingController();

class _SupplierNameState extends State<SupplierName> {
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
                ledger.text = suggestion.toString();
                context
                    .read<ContractReviewBloc>()
                    .add(CustomerNameEvent(name: ledger.text));
              },
              textFieldConfiguration: TextFieldConfiguration(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  label: const Text('Supplier Name'),
                  hintText: 'Supplier Name',
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
                controller: ledger,
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

List<String> getSuggestions(String query, BuildContext context) {
  final List<LedgerMasterHiveModel?>? matches =
      context.read<GoodsRecieptNoteBloc>().state.allledger;

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
