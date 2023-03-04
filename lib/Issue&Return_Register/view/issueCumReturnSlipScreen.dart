import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/Issue&Return_Register/bloc/issue_and_return_register_bloc.dart';
import 'package:formapp/Issue&Return_Register/view/createIssueCumReturnSlip.dart';

import '../../main.dart';

class IssueCumReturnSlipScreen extends StatelessWidget {
  const IssueCumReturnSlipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Issue Cum Return Slip'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          // context.read<IssueAndReturnRegisterBloc>().add(FetchingEvent());
          Navigator.of(context).push(MaterialPageRoute(builder: (contex) {
            return BlocProvider.value(
              value: context.read<IssueAndReturnRegisterBloc>(),
              child: const CreateIssueCumReturnSlip(),
            );
          }));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
