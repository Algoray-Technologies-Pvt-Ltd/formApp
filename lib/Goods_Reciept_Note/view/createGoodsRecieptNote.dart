import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/Goods_Reciept_Note/bloc/goods_reciept_note_bloc.dart';
import 'package:formapp/Goods_Reciept_Note/view/widgets/billDate.dart';
import 'package:formapp/Goods_Reciept_Note/view/widgets/grnDate.dart';

import '../../main.dart';
import '../../widgets/ktextFeild.dart';

class CreateGoodsRecieptNote extends StatelessWidget {
  const CreateGoodsRecieptNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Goods Reciept Note'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          context.read<GoodsRecieptNoteBloc>().add(SaveEvent());
        },
        child: const Icon(Icons.save),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          child: Wrap(
            alignment: WrapAlignment.spaceBetween,
            children: [
              KTextField(
                onChanged: (value) {
                  context
                      .read<GoodsRecieptNoteBloc>()
                      .add(GrnNumberEvent(grnNumber: value));
                },
                initialText: '',
                hintText: 'GRN.No',
              ),
              const GRNDate(),
              KTextField(
                onChanged: (value) {
                  context
                      .read<GoodsRecieptNoteBloc>()
                      .add(SupplierNameEvent(supplierName: value));
                },
                initialText: '',
                hintText: 'Supplier Name',
              ),
              KTextField(
                onChanged: (value) {
                  context
                      .read<GoodsRecieptNoteBloc>()
                      .add(BillNumberEvent(billNumber: value));
                },
                initialText: '',
                hintText: 'Bill No.',
              ),
              const BillDate(),
              KTextField(
                onChanged: (value) {
                  context
                      .read<GoodsRecieptNoteBloc>()
                      .add(SlNumberEvent(slNumber: value));
                },
                initialText: '',
                hintText: 'Sl.No',
              ),
              KTextField(
                onChanged: (value) {
                  context.read<GoodsRecieptNoteBloc>().add(
                      MaterialDescriotionEvent(materialDescriotion: value));
                },
                initialText: '',
                hintText: 'Material Description',
              ),
              KTextField(
                onChanged: (value) {
                  int orderQty = int.tryParse(value) ?? 0;
                  context
                      .read<GoodsRecieptNoteBloc>()
                      .add(OrderQtyEvent(orderQty: orderQty));
                },
                initialText: '',
                hintText: 'Order Qty',
              ),
              KTextField(
                onChanged: (value) {
                  int acceptedQty = int.tryParse(value) ?? 0;
                  context
                      .read<GoodsRecieptNoteBloc>()
                      .add(RecievedQtyEvent(recievedQty: acceptedQty));
                },
                initialText: '',
                hintText: 'Recieved Qty',
              ),
              KTextField(
                onChanged: (value) {
                  int acceptedQty = int.tryParse(value) ?? 0;
                  context
                      .read<GoodsRecieptNoteBloc>()
                      .add(AcceptedQtyEvent(acceptedQty: acceptedQty));
                },
                initialText: '',
                hintText: 'Accepted Qty',
              ),
              KTextField(
                onChanged: (value) {
                  context
                      .read<GoodsRecieptNoteBloc>()
                      .add(InspectionDetailsEvent(inspectionDetails: value));
                },
                initialText: '',
                hintText: 'Inspection Details',
              ),
              KTextField(
                onChanged: (value) {
                  context
                      .read<GoodsRecieptNoteBloc>()
                      .add(IFRejectionDetailsEvent(ifrejectionDetails: value));
                },
                initialText: '',
                hintText: 'If Rejection Details',
              ),
              KTextField(
                onChanged: (value) {
                  context
                      .read<GoodsRecieptNoteBloc>()
                      .add(RemarksEvent(remarks: value));
                },
                initialText: '',
                hintText: 'Remarks',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
