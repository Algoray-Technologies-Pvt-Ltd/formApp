import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/Gate_Inward_Register/bloc/gate_inward_register_bloc.dart';
import 'package:formapp/Gate_Inward_Register/models/gateInwardRegisterModel.dart';
import '../../main.dart';
import 'createGateInwardRegster.dart';

class GateInwardRegisterScreen extends StatelessWidget {
  const GateInwardRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gate Inward Register'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          context.read<GateInwardRegisterBloc>().add(FetchingGateInwardEvent());
          Navigator.of(context).push(MaterialPageRoute(builder: (contex) {
            return BlocProvider.value(
              value: context.read<GateInwardRegisterBloc>(),
              child: const CreateGateInwardRegister(),
            );
          }));
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: SingleChildScrollView(
          child: GateInwardDataTable(),
        ),
      ),
    );
  }
}

class GateInwardDataTable extends StatelessWidget {
  GateInwardDataTable({super.key});

  final List<GateInwardRegisterModel> _dataList = [];

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
                'GI.No',
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
                textAlign: TextAlign.start,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'From',
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
                'Checked By',
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
                DataCell(Text(data.gateInwardNumber!)),
                DataCell(Text(data.date.toString())),
                DataCell(Text(data.gatePassNumber!)),
                DataCell(Text(data.gatePassDate.toString())),
                DataCell(Text(data.from!)),
                DataCell(Text(data.modeOfTransport!)),
                DataCell(Text(data.vehicleNumber!)),
                DataCell(Text(data.description!)),
                DataCell(Text(data.quantity.toString())),
                DataCell(Text(data.purpose.toString())),
                DataCell(Text(data.checkedBy.toString())),
                DataCell(Text(data.returnableOrNonReturnable.toString())),
                DataCell(Text(data.remarks!))
              ]),
            )
            .toList(),
      ),
    );
  }
}
