import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/main.dart';
import 'package:formapp/marketingVisitReport/bloc/bloc/marketing_visit_report_bloc.dart';
import 'package:formapp/marketingVisitReport/view/marketVisitReportCreate.dart';

class MarketingVisitReportScreen extends StatelessWidget {
  const MarketingVisitReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Market Visit Report'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
            return BlocProvider.value(
                value: context.read<MarketingVisitReportBloc>()
                  ..add(FetchingEvent()),
                child: MarketVisitReportCreate());
          }));
        },
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: SingleChildScrollView(child: DataTableWidget()),
      ),
    );
  }
}

class DataTableWidget extends StatelessWidget {
  const DataTableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      border: TableBorder.all(),
      columns: const <DataColumn>[
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
              'Customer Name',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              ' Address',
              textAlign: TextAlign.start,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Person Meet',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Details of Meeting',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Follow-up Details',
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
        DataColumn(
          label: Expanded(
            child: Text(
              'Enquiry ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Negotation',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Amendment ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Payment Collection',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Order',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
      rows: const [
        DataRow(
          cells: <DataCell>[
            DataCell(Text('1')),
            DataCell(Text('19')),
            DataCell(Text('Student')),
            DataCell(Text('Sarah')),
            DataCell(Text('19')),
            DataCell(Text('Student')),
            DataCell(Text('Sarah')),
            DataCell(Text('19')),
            DataCell(Text('Student')),
            DataCell(Text('Student')),
            DataCell(Text('Student')),
            DataCell(Text('Student')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('2')),
            DataCell(Text('19')),
            DataCell(Text('Student')),
            DataCell(Text('Sarah')),
            DataCell(Text('19')),
            DataCell(Text('Student')),
            DataCell(Text('Sarah')),
            DataCell(Text('19')),
            DataCell(Text('Student')),
            DataCell(Text('Student')),
            DataCell(Text('Student')),
            DataCell(Text('Student')),
          ],
        ),
      ],
    );
  }
}
