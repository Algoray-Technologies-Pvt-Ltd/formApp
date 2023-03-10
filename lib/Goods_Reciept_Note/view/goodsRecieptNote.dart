import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/Goods_Reciept_Note/bloc/goods_reciept_note_bloc.dart';
import '../../main.dart';
import '../models/goodsRecieptNoteModel.dart';
import 'createGoodsRecieptNote.dart';

class GoodsRecieptNoteScreen extends StatelessWidget {
  const GoodsRecieptNoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Goods Reciept Note'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          // context.read<GoodsRecieptNoteBloc>().add(FetchingEvent());
          Navigator.of(context).push(MaterialPageRoute(builder: (contex) {
            return BlocProvider.value(
              value: context.read<GoodsRecieptNoteBloc>(),
              child: const CreateGoodsRecieptNote(),
            );
          }));
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: SingleChildScrollView(
          child: GoodsReciepDataTable(),
        ),
      ),
    );
  }
}

class GoodsReciepDataTable extends StatelessWidget {
  GoodsReciepDataTable({super.key});

  final List<GoodsRecieptNoteModel> _dataList = [];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Align(
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
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
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
                  DataCell(Text(data.grnNumber!)),
                  DataCell(Text(data.date.toString())),
                  DataCell(Text(data.supplierName!)),
                  DataCell(Text(data.billNumber!)),
                  DataCell(Text(data.billDate.toString())),
                  DataCell(Text(data.slNumber.toString())),
                  DataCell(Text(data.materialDescriotion!)),
                  DataCell(Text(data.orderQty.toString())),
                  DataCell(Text(data.recievedQty.toString())),
                  DataCell(Text(data.acceptedQty.toString())),
                  DataCell(Text(data.inspectionDetails!)),
                  DataCell(Text(data.IFRejectionDetails!)),
                  DataCell(Text(data.remarks!))
                ]),
              )
              .toList(),
        ),
      ),
    );
  }
}
