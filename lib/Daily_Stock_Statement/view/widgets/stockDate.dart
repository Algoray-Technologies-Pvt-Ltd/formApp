import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../widgets/kDateSet.dart';
import '../../bloc/daily_stock_statement_bloc.dart';

class StockDate extends StatelessWidget {
  const StockDate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController stockDateController = TextEditingController();
    return KDateSet(
      label: const Text('Stock Date'),
      controller: stockDateController
        ..text = context.select((DailyStockStatementBloc value) =>
            value.state.dailyStockStatementModel?.stockDate != null
                ? DateFormat('yyyy-MM-dd')
                    .format(value.state.dailyStockStatementModel!.stockDate!)
                : ''),
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
    );
  }
}
