import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:formapp/Daily_Stock_Statement/view/widgets/description.dart';
import 'package:formapp/contractReview/bloc/bloc/contract_review_bloc.dart';
import 'package:formapp/contractReview/model/contractReviewmodel.dart';
import 'package:formapp/customerComplaintReg/bloc/bloc/customer_complaint_reg_bloc.dart';
import 'package:formapp/model/Ledgers/LedMasterHiveModel.dart';
import 'package:formapp/model/allLedgerModel.dart';

class CustomerComplaintNmaeWidget extends StatefulWidget {
  CustomerComplaintNmaeWidget({super.key});

  @override
  State<CustomerComplaintNmaeWidget> createState() =>
      _CustomerComplaintNmaeWidgetState();
}

TextEditingController phoneNo = TextEditingController();

class _CustomerComplaintNmaeWidgetState
    extends State<CustomerComplaintNmaeWidget> {
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
                phoneNo.text = suggestion.name.toString();
                context.read<CustomerComplaintRegBloc>().add(
                    LedNameEvent(name: suggestion.name, id: suggestion.id));
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
                return getSuggestionscustomerComplaintReg(pattern, context);
              },
              itemBuilder: (context, suggestion) {
                return ListTile(title: Text(suggestion.toString()));
              },

              // onSaved: (value) => phoneNo.text = value!,
            )));
  }
}

List<SuggestionItem> getSuggestionscustomerComplaintReg(
    String query, BuildContext context) {
  final List<LedgerMasterHiveModel?>? matches =
      context.read<CustomerComplaintRegBloc>().state.allledger;

  if (matches == null) {
    return [];
  }

  final List<SuggestionItem> matchingNames = matches
      .where((item) =>
          item != null &&
          item.Ledger_Name != null &&
          item.Ledger_Name!.toLowerCase().contains(query.toLowerCase()))
      .map((item) =>
          SuggestionItem(id: item!.LEDGER_ID!, name: item.Ledger_Name!))
      .toList();

  return matchingNames;
}
