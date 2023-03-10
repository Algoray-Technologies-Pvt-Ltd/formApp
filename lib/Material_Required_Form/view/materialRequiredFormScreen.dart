import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/Material_Required_Form/bloc/material_required_form_bloc.dart';
import 'package:formapp/Material_Required_Form/view/createMaterialRequiredForm.dart';

import '../../main.dart';

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
          context.read<MaterialRequiredFormBloc>().add(FetchingEvent());
          Navigator.of(context).push(MaterialPageRoute(builder: (contex) {
            return BlocProvider.value(
              value: context.read<MaterialRequiredFormBloc>(),
              child: const CreateMaterialRequiredForm(),
            );
          }));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
