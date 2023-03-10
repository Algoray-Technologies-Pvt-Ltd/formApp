import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:formapp/Material_Required_Form/bloc/material_required_form_bloc.dart';
import 'package:formapp/model/allLedgerModel.dart';

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
                context
                    .read<MaterialRequiredFormBloc>()
                    .add(CustomerNameEvent(customerName: phoneNo.text,));
              },
              textFieldConfiguration: TextFieldConfiguration(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  label:const Text('Customer Name'),
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
  List<Data?>? matches = context.read<MaterialRequiredFormBloc>().state.allledger;
  print('*****************');
  print(matches?.length);
  print('*****************');
  matches?.retainWhere(
      (s) => s!.ledgerName!.toLowerCase().contains(query.toLowerCase()));

  return matches?.map((e) => e?.ledgerName) ?? [];
}
