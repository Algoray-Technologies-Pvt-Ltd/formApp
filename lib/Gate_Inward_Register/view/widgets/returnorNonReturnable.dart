import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/Gate_Inward_Register/bloc/gate_inward_register_bloc.dart';

enum PaymentMethod { returnable, nonReturnable }

class ReturnableOrNonReturnable extends StatefulWidget {
  @override
  _ReturnableOrNonReturnableState createState() =>
      _ReturnableOrNonReturnableState();
}

class _ReturnableOrNonReturnableState extends State<ReturnableOrNonReturnable> {
  PaymentMethod? _selectedPaymentMethod = PaymentMethod.returnable;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 400,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              width: 1.0,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            )),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Radio<PaymentMethod>(
                value: PaymentMethod.returnable,
                groupValue: _selectedPaymentMethod,
                onChanged: (PaymentMethod? value) {
                  setState(() {
                    _selectedPaymentMethod = value;
                  });
                  context.read<GateInwardRegisterBloc>().add(
                      ReturnableOrNonReturnableEvent(
                          returnableOrNonReturnable: true));
                },
              ),
              const Text('Returnable'),
              const SizedBox(
                width: 30,
              ),
              Radio<PaymentMethod>(
                value: PaymentMethod.nonReturnable,
                groupValue: _selectedPaymentMethod,
                onChanged: (PaymentMethod? value) {
                  setState(() {
                    _selectedPaymentMethod = value;
                  });
                  context.read<GateInwardRegisterBloc>().add(
                      ReturnableOrNonReturnableEvent(
                          returnableOrNonReturnable: false));
                },
              ),
              const Text('Non-Returnable'),
            ],
          ),
        ),
      ),
    );
  }
}
