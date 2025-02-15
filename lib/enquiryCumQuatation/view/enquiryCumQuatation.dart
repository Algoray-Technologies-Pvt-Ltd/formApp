import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/enquiryCumQuatation/bloc/bloc/enquiry_cum_quatation_bloc.dart';
import 'package:formapp/enquiryCumQuatation/view/createEnquiryCumQuatation.dart';
import 'package:formapp/main.dart';

class EnquiryCumQuatationScreen extends StatelessWidget {
  const EnquiryCumQuatationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enquiry Cum Quotation Register'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
            return BlocProvider.value(
                value: context.read<EnquiryCumQuatationBloc>()
                  ..add(FetchEvent()),
                child: EnquiryCumQuatationCreate());
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
              'PO Rec. Date',
              textAlign: TextAlign.start,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'PO Due Date',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Material Specification',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Payment',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Transport',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Approvel By',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Approvel Date',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Details of Amandment',
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
          ],
        ),
      ],
    );
  }
}
