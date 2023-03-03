import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/Daily_Stock_Statement/bloc/daily_stock_statement_bloc.dart';
import 'package:intl/intl.dart';

class StockDate extends StatelessWidget {
  const StockDate({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController stockDateController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SizedBox(
        width: 400,
        child: Builder(
          builder: (context) {
            return TextFormField(
              controller: stockDateController
                ..text = context.select((DailyStockStatementBloc value) =>
                    value.state.dailyStockStatementModel?.stockDate != null
                        ? DateFormat('yyyy-MM-dd').format(
                            value.state.dailyStockStatementModel!.stockDate!)
                        : ''),
              decoration: InputDecoration(
                fillColor: Colors.white,
                hintText: 'Date',
                label: const Text('Date'),
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16 * 0.75),
                  child: Icon(
                    Icons.calendar_month,
                    color: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .color!
                        .withOpacity(0.3),
                  ),
                ),
              ),
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2015, 8),
                  lastDate: DateTime(2101),
                );
                if (pickedDate != null) {
                  DateTime selectedDate = DateTime(
                    pickedDate.year,
                    pickedDate.month,
                    pickedDate.day,
                  );
                  context
                      .read<DailyStockStatementBloc>()
                      .add(StockDateEvent(stockDate: selectedDate));
                } else {
                  print('error');
                }
              },
              readOnly: true,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please Select Date';
                }
                return null;
              },
            );
          },
        ),
      ),
    );
  }
}
