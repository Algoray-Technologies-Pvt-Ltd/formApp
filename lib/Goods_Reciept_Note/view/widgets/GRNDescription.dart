import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:formapp/Daily_Stock_Statement/bloc/daily_stock_statement_bloc.dart';
import 'package:formapp/model/HiveModels/InventoryItems/InvetoryItemDataModel.dart';

import '../../bloc/goods_reciept_note_bloc.dart';

class GRNDescription extends StatefulWidget {
  const GRNDescription({super.key});

  @override
  State<GRNDescription> createState() => _GRNDescriptionState();
}

TextEditingController desc = TextEditingController();

class _GRNDescriptionState extends State<GRNDescription> {
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
                context
                    .read<GoodsRecieptNoteBloc>()
                    .add(MaterialDescriotionEvent(materialDescriotion: desc.text));
              },
              textFieldConfiguration: TextFieldConfiguration(
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  label: Text('Material Description'),
                  hintText: 'Material Description',
                  fillColor: Colors.white,
                ),
                controller: desc,
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

getSuggestionsItems(String query, BuildContext context) {
  List<InventoryItemHive?>? matches =
      context.read<GoodsRecieptNoteBloc>().state.allItems;
  print('*****************');
  print(matches?.length);
  print('*****************');
  matches?.retainWhere(
      (s) => s!.Item_Name!.toLowerCase().contains(query.toLowerCase()));

  return matches?.map((e) => e?.Item_Name) ?? [];
}
