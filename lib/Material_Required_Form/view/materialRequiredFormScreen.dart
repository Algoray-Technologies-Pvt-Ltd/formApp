import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/Material_Required_Form/bloc/material_required_form_bloc.dart';
import 'package:formapp/Material_Required_Form/view/createMaterialRequiredForm.dart';

import '../../main.dart';
import '../models/materialRequiredFormModel.dart';

class MaterialRequiredFormScreen extends StatelessWidget {
  const MaterialRequiredFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material Required Form'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          context
              .read<MaterialRequiredFormBloc>()
              .add(FetchingMaterialReqEvent());
          Navigator.of(context).push(MaterialPageRoute(builder: (contex) {
            return BlocProvider.value(
              value: context.read<MaterialRequiredFormBloc>(),
              child: const CreateMaterialRequiredForm(),
            );
          }));
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: SingleChildScrollView(
          child: MaterialRequiredDataTable(),
        ),
      ),
    );
  }
}

class MaterialRequiredDataTable extends StatelessWidget {
  MaterialRequiredDataTable({super.key});

  final List<MaterialrequiredFormModel> _dataList = [];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Align(
        alignment: Alignment.center,
        // child:
        // SingleChildScrollView(
        //   child: ValueListenableBuilder(
        //     valueListenable: Hive.box<InventoryItemHive>(hivekey).listenable(),
        //     builder: (context, Box<InventoryItemHive> box, _) {
        //       if (box.values.isEmpty) {
        //         return const Center(
        //           child: Text("No Items"),
        //         );
        //       }
        //       return Column(
        //         children: [
        //           Table(
        //             border: TableBorder.all(
        //               color: Colors.white,
        //               width: 3,
        //             ),
        //             children: [
        //               buildRow([
        //                 'Sl. No',
        //                 "PO. No.",
        //                 'Customer Name',
        //                 "Date",
        //                 "Material Description",
        //                 'In Hand',
        //                 "Req. Qty",
        //                 'Issued Qty',
        //                 'Remarks',
        //                 'Requisitioned By',
        //                 'SK Sign',
        //                 'PE Sign',
        //               ], context),
        //             ],
        //           ),
        //           ListView.builder(
        //             shrinkWrap: true,
        //             itemCount: box.values.length,
        //             itemBuilder: (context, index) {
        //               InventoryItemHive? item = box.getAt(index);
        //               return Table(
        //                 border: TableBorder.all(color: Colors.white),
        //                 children: [
        //                   buildRow([
        //                     "${index + 1}",
        //                     "${index + 1}",
        //                     (item?.Group_Name ?? ''),
        //                     (item?.Category ?? ''),
        //                     "${item?.Date_Created ?? ''}",
        //                   ], context)
        //                 ],
        //               );
        //             },
        //           )
        //         ],
        //       );
        //     },
        child: DataTable(
          columnSpacing: 30,
          border: TableBorder.all(),
          columns: const <DataColumn>[
            DataColumn(
              label: Expanded(
                child: Text(
                  'Sl. No.',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Text(
                  'PO. No.',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Text(
                  'Customer Name',
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
                  'Material Description',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Text(
                  'In Hand',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Text(
                  'Req. Qty',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Text(
                  'Issued Qty',
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
            DataColumn(
              label: Expanded(
                child: Text(
                  'Requisitioned By',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Text(
                  'SK Sign',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Text(
                  'PE Sign',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
          rows: _dataList
              .map(
                (data) => DataRow(cells: [
                  DataCell(Text(data.slNumber!)),
                  DataCell(Text(data.PONumber.toString())),
                  DataCell(Text(data.customerName.toString())),
                  DataCell(Text(data.date.toString())),
                  DataCell(Text(data.materialDescription!)),
                  DataCell(Text(data.inHand.toString())),
                  DataCell(Text(data.requiredQuantity.toString())),
                  DataCell(Text(data.issuedQuantity.toString())),
                  DataCell(Text(data.remarks!)),
                  DataCell(Text(data.requisitionedBy!)),
                  DataCell(Text(data.skSign!)),
                  DataCell(Text(data.peSign!)),
                ]),
              )
              .toList(),
        ),
      ),
      // ),
      // ),
    );
  }

  TableRow buildRow(List cells, context) => TableRow(
      children: cells
          .map((e) => InkWell(
                onDoubleTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                    return const CreateMaterialRequiredForm();
                  }));
                },
                child: Card(
                  color: Colors.black45,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text(e)),
                  ),
                ),
              ))
          .toList());
}
