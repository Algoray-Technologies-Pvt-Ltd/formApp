import 'package:flutter/material.dart';
import 'package:formapp/contractReview/view/createCustomerOrderReg.dart';
import 'package:formapp/main.dart';

class ContractReviewScreen extends StatelessWidget {
  const ContractReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contract Review'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
            return CreateContractReview();
          }));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
