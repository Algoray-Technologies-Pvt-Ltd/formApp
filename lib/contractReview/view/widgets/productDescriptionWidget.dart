import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/contractReview/bloc/bloc/contract_review_bloc.dart';

class ProductDescriptionWidget extends StatefulWidget {
  const ProductDescriptionWidget({super.key});

  @override
  State<ProductDescriptionWidget> createState() =>
      _ProductDescriptionWidgetState();
}

class _ProductDescriptionWidgetState extends State<ProductDescriptionWidget> {
  String? selectedShape = "productDescription";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                // color: whileColor40,
                width: 1.0,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              )),
          width: 400,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'ProductDescription',
                   
                  ),
                ),
                Radio(
                  value: "true",
                  groupValue: selectedShape,
                  onChanged: (value) {
                    setState(() {
                      selectedShape = value;
                    });

                    context
                        .read<ContractReviewBloc>()
                        .add(ProductDescriptionEvent(description: true));
                  },
                ),
                Text("Yes"),
                Radio(
                  value: "false",
                  groupValue: selectedShape,
                  onChanged: (value) {
                    setState(() {
                      selectedShape = value;
                    });

                    context
                        .read<ContractReviewBloc>()
                        .add(ProductDescriptionEvent(description: false));
                  },
                ),
                Text("No"),
              ],
            ),
          )),
    );
  }
}
