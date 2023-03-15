import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/Tools_List/bloc/tools_list_bloc.dart';
import 'package:formapp/Tools_List/view/createToolsList.dart';

import '../../main.dart';
import '../models/toolsListModel.dart';

class ToolListScreen extends StatelessWidget {
  const ToolListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tool List'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          context.read<ToolsListBloc>().add(FetchingToolsEvent());
          Navigator.of(context).push(MaterialPageRoute(builder: (contex) {
            return BlocProvider.value(
              value: context.read<ToolsListBloc>(),
              child: const CreateToolsList(),
            );
          }));
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: SingleChildScrollView(
          child: ToolsDataTable(),
        ),
      ),
    );
  }
}

class ToolsDataTable extends StatelessWidget {
  ToolsDataTable({super.key});

  final List<ToolsListModel> _dataList = [];

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
                  'FT No.',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Text(
                  'Rev No.',
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
                  'Page No.',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Text(
                  'Sl. No.',
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
                  'Description',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Text(
                  'Size',
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
                  'Make',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Text(
                  'Remark',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
          rows: _dataList
              .map(
                (data) => DataRow(cells: [
                  DataCell(Text(data.ftNumber!)),
                  DataCell(Text(data.revNumber.toString())),
                  DataCell(Text(data.date.toString())),
                  DataCell(Text(data.pageNumber.toString())),
                  DataCell(Text(data.slNumber!)),
                  DataCell(Text(data.description.toString())),
                  DataCell(Text(data.size.toString())),
                  DataCell(Text(data.quantity.toString())),
                  DataCell(Text(data.make.toString())),
                  DataCell(Text(data.remarks!)),
                ]),
              )
              .toList(),
        ),
      ),
      // ),
      // ),
    );
  }

  // TableRow buildRow(List cells, context) => TableRow(
  //     children: cells
  //         .map((e) => InkWell(
  //               onDoubleTap: () {
  //                 Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
  //                   return const CreateReorderLevelChart();
  //                 }));
  //               },
  //               child: Card(
  //                 color: Colors.black45,
  //                 child: Padding(
  //                   padding: const EdgeInsets.all(8.0),
  //                   child: Center(child: Text(e)),
  //                 ),
  //               ),
  //             ))
  //         .toList());
}
