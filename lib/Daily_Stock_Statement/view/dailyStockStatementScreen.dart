import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/Daily_Stock_Statement/bloc/daily_stock_statement_bloc.dart';
import '../../main.dart';
import '../models/dailyStockStatementModel.dart';
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
      body: const Padding(
        padding: EdgeInsets.all(5),
        child: SingleChildScrollView(
          child: DailyStockDataTable(),
        ),
      ),
    );
  }
}

class DailyStockDataTable extends StatefulWidget {
  const DailyStockDataTable({super.key});

  @override
  State<DailyStockDataTable> createState() => _DailyStockDataTableState();
}

class _DailyStockDataTableState extends State<DailyStockDataTable> {
  final List<DailyStockStatementModel> _dataList = [
    DailyStockStatementModel(
        date: DateTime(1999, 07, 27),
        slNumber: '1',
        description: "hoi description",
        openingStock: 200,
        purchase: 100,
        total: 300,
        issue: 200,
        closingStock: 100,
        remarks: 'done'),
    DailyStockStatementModel(
        date: DateTime(1999, 07, 27),
        slNumber: '2',
        description: "hoi description",
        openingStock: 200,
        purchase: 100,
        total: 300,
        issue: 200,
        closingStock: 100,
        remarks: 'done'),
  ];

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: DataTable(
        border: TableBorder.all(),
        columns: const <DataColumn>[
          DataColumn(
            label: Expanded(
              child: Text(
                'Date',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'Sl.No',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'Description',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'Opening Stock',
                textAlign: TextAlign.start,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'Purchase',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'Total',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'Issue',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'Closing Stock',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'Remarks',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
        rows: _dataList
            .map(
              (data) => DataRow(cells: [
                DataCell(Text(data.date.toString())),
                DataCell(Text(data.slNumber!)),
                DataCell(Text(data.description!)),
                DataCell(Text(data.openingStock.toString())),
                DataCell(Text(data.purchase.toString())),
                DataCell(Text(data.total.toString())),
                DataCell(Text(data.issue.toString())),
                DataCell(Text(data.closingStock.toString())),
                DataCell(Text(data.remarks!))
              ]),
            )
            .toList(),
      ),
    );
  }
}
