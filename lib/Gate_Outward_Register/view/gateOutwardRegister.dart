import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/Gate_Inward_Register/bloc/gate_inward_register_bloc.dart';
import 'package:formapp/Gate_Outward_Register/bloc/gate_outward_register_bloc.dart';
import 'package:formapp/Gate_Outward_Register/models/gateOutwardRegisterModel.dart';
import 'package:formapp/Gate_Outward_Register/view/createGateOutwardRegister.dart';

import '../../main.dart';

class GateOutwardRegisterScreen extends StatelessWidget {
  const GateOutwardRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gate Outward Register'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          // context.read<GateInwardRegisterBloc>().add(FetchingEvent());
          Navigator.of(context).push(MaterialPageRoute(builder: (contex) {
            return BlocProvider.value(
              value: context.read<GateOutwardRegisterBloc>(),
              child: const CreateGateOutwardRegister(),
            );
          }));
        },
        child: const Icon(Icons.add),
      ),
      body: const Padding(
        padding: EdgeInsets.all(5),
        child: SingleChildScrollView(
          child: GateOutwardDataTable(),
        ),
      ),
    );
  }
}

class GateOutwardDataTable extends StatefulWidget {
  const GateOutwardDataTable({super.key});

  @override
  State<GateOutwardDataTable> createState() => _GateOutwardDataTableState();
}

class _GateOutwardDataTableState extends State<GateOutwardDataTable> {
  final List<GateOutWardRegisterModel> _dataList = [];

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: DataTable(
        columnSpacing: 30,
        border: TableBorder.all(),
        columns: const <DataColumn>[
          DataColumn(
            label: Expanded(
              child: Text(
                'GO.No',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'Date',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'GP No.',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'GP Date',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'To',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'Mode of Transport',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'Vehicle No.',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'Description',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'Qty',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'Purpose',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'Signature',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'Returnable/Non Returnable',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'Remarks',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
        rows: _dataList
            .map(
              (data) => DataRow(cells: [
                DataCell(Text(data.gateOutwardNumber!)),
                DataCell(Text(data.date.toString())),
                DataCell(Text(data.gatePassNumber!)),
                DataCell(Text(data.gatePassDate.toString())),
                DataCell(Text(data.to!)),
                DataCell(Text(data.modeOfTransport!)),
                DataCell(Text(data.vehicleNumber!)),
                DataCell(Text(data.description!)),
                DataCell(Text(data.quantity.toString())),
                DataCell(Text(data.purpose.toString())),
                DataCell(Text(data.signature.toString())),
                DataCell(Text(data.returnableOrNonReturnable.toString())),
                DataCell(Text(data.remarks!))
              ]),
            )
            .toList(),
      ),
    );
  }
}
