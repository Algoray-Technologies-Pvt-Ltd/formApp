import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/Tools_List/bloc/tools_list_bloc.dart';

import '../../main.dart';
import '../../widgets/ktextFeild.dart';

class CreateToolsList extends StatelessWidget {
  const CreateToolsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Tools List'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          context.read<ToolsListBloc>().add(SaveEvent());
        },
        child: const Icon(Icons.save),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          child: Wrap(
            alignment: WrapAlignment.spaceBetween,
            children: [
              KTextField(
                onChanged: (value) {
                  context
                      .read<ToolsListBloc>()
                      .add(SlNumberEvent(slNumber: value));
                },
                initialText: '',
                hintText: 'Sl.No',
              ),
              KTextField(
                onChanged: (value) {
                  context
                      .read<ToolsListBloc>()
                      .add(DescriptionEvent(description: value));
                },
                initialText: '',
                hintText: 'Description',
              ),
              KTextField(
                onChanged: (value) {
                  context.read<ToolsListBloc>().add(SizeEvent(size: value));
                },
                initialText: '',
                hintText: 'Size',
              ),
              KTextField(
                onChanged: (value) {
                  int qty = int.tryParse(value) ?? 0;

                  context.read<ToolsListBloc>().add(QuantityEvent(qty: qty));
                },
                initialText: '',
                hintText: 'Qty',
              ),
              KTextField(
                onChanged: (value) {
                  context.read<ToolsListBloc>().add(MakeEvent(make: value));
                },
                initialText: '',
                hintText: 'Make',
              ),
              KTextField(
                onChanged: (value) {
                  context
                      .read<ToolsListBloc>()
                      .add(RemarksEvent(remarks: value));
                },
                initialText: '',
                hintText: 'Remark',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
