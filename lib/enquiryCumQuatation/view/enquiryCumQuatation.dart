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
                value: context.read<EnquiryCumQuatationBloc>(),
                child: EnquiryCumQuatationCreate());
          }));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
