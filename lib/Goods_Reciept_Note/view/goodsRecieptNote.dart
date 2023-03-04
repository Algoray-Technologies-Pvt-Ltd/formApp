import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/Goods_Reciept_Note/bloc/goods_reciept_note_bloc.dart';
import '../../main.dart';
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
    );
  }
}
