import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/Daily_Stock_Statement/bloc/daily_stock_statement_bloc.dart';
import '../../main.dart';
import '../../widgets/ktextFeild.dart';
import 'widgets/stockDate.dart';

class CreateDailyStockStatement extends StatelessWidget {
  const CreateDailyStockStatement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Daily Stock Statement'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          context.read<DailyStockStatementBloc>().add(SaveEvent());
        },
        child: const Icon(Icons.save),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Wrap(
            alignment: WrapAlignment.spaceBetween,
            children: [
              KTextField(
                onChanged: (value) {
                  context
                      .read<DailyStockStatementBloc>()
                      .add(SlNumberEvent(slNumber: value));
                },
                initialText: '',
                hintText: 'Sl.No',
              ),
              const StockDate(),
              KTextField(
                onChanged: (value) {
                  context
                      .read<DailyStockStatementBloc>()
                      .add(DescriptionEvent(description: value));
                },
                initialText: '',
                hintText: 'Description',
              ),
              KTextField(
                onChanged: (value) {
                  int openingStock = int.tryParse(value) ?? 0;
                  context
                      .read<DailyStockStatementBloc>()
                      .add(OpeningStockEvent(openingStock: openingStock));
                },
                initialText: '',
                hintText: 'Opening Stock',
              ),
              KTextField(
                onChanged: (value) {
                  int purchase = int.tryParse(value) ?? 0;
                  context
                      .read<DailyStockStatementBloc>()
                      .add(PurchaseStockEvent(purchaseStock: purchase));
                },
                initialText: '',
                hintText: 'Purchase',
              ),
              KTextField(
                onChanged: (value) {
                  int total = int.tryParse(value) ?? 0;
                  context
                      .read<DailyStockStatementBloc>()
                      .add(TotalStockEvent(totalStock: total));
                },
                initialText: '',
                hintText: 'Total',
              ),
              KTextField(
                onChanged: (value) {
                  int issue = int.tryParse(value) ?? 0;
                  context
                      .read<DailyStockStatementBloc>()
                      .add(StockIssueEvent(stockIssue: issue));
                },
                initialText: '',
                hintText: 'Issue',
              ),
              KTextField(
                onChanged: (value) {
                  int closingStock = int.tryParse(value) ?? 0;
                  context
                      .read<DailyStockStatementBloc>()
                      .add(ClosingStockEvent(closingStock: closingStock));
                },
                initialText: '',
                hintText: 'Closing Stock',
              ),
              KTextField(
                onChanged: (value) {
                  context
                      .read<DailyStockStatementBloc>()
                      .add(RemarksEvent(remarks: value));
                },
                initialText: '',
                hintText: 'Purchase',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
