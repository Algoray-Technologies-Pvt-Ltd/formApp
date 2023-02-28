import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/contractReview/bloc/bloc/contract_review_bloc.dart';
import 'package:formapp/contractReview/view/createCustomerOrderReg.dart';
import 'package:formapp/main.dart';

class ContractReviewScreen extends StatelessWidget {
  const ContractReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contract Review'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          print(
              'status:   ${BlocProvider.of<ContractReviewBloc>(context).state.status}');

          context.read<ContractReviewBloc>().add(FetchingEvent());
          print(
              'status:   ${BlocProvider.of<ContractReviewBloc>(context).state.status}');

          Navigator.of(context).push(MaterialPageRoute(builder: (contex) {
            return BlocProvider.value(
              value: context.read<ContractReviewBloc>(),
              child: CreateContractReview(),
            );
          }));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
