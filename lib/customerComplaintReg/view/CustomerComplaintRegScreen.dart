import 'package:flutter/material.dart';
import 'package:formapp/customerComplaintReg/view/createCustomercmplaintReg.dart';
import 'package:editable/editable.dart';
import 'package:formapp/main.dart';

class CustomerComplaintRegScreen extends StatelessWidget {
  const CustomerComplaintRegScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customer Complaint'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
            return CreateComplainrReg();
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
              'Complaint Date',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              '''Customer Name
               & Address ''',
              textAlign: TextAlign.start,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Nature of Complaint',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Root Cause',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Corrective Action',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Preventive Action',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Action Date',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              '''Inform to customer, 
              if yes- date, details ''',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Remarks ',
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
