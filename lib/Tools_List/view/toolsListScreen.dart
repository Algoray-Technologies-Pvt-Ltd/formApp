import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/Tools_List/bloc/tools_list_bloc.dart';
import 'package:formapp/Tools_List/view/createToolsList.dart';

import '../../main.dart';

class ToolListScreen extends StatelessWidget {
  const ToolListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tool List'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          // context.read<ToolsListBloc>().add(FetchingEvent());
          Navigator.of(context).push(MaterialPageRoute(builder: (contex) {
            return BlocProvider.value(
              value: context.read<ToolsListBloc>(),
              child: const CreateToolsList(),
            );
          }));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
