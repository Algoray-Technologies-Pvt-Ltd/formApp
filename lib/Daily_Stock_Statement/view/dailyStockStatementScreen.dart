import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/Daily_Stock_Statement/bloc/daily_stock_statement_bloc.dart';
import '../../main.dart';
import 'createDailyStockStatement.dart';

class DailyStockStatementScreen extends StatelessWidget {
  const DailyStockStatementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daily Stock Statement'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          // context.read<DailyStockStatementBloc>().add(FetchingEvent());
          Navigator.of(context).push(MaterialPageRoute(builder: (contex) {
            return BlocProvider.value(
              value: context.read<DailyStockStatementBloc>(),
              child: const CreateDailyStockStatement(),
            );
          }));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
