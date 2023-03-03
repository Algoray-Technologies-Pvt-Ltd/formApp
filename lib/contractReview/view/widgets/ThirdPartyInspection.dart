import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/contractReview/bloc/bloc/contract_review_bloc.dart';

class ThirdPartyInspectionWidget extends StatefulWidget {
  const ThirdPartyInspectionWidget({super.key});

  @override
  State<ThirdPartyInspectionWidget> createState() =>
      _ThirdPartyInspectionWidgetState();
}

class _ThirdPartyInspectionWidgetState
    extends State<ThirdPartyInspectionWidget> {
  String? selectedShape = "ThirdPartyInspection";
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
                    'Third Party Inspection',
                    
                  ),
                ),
                Radio(
                  value: "true",
                  groupValue: selectedShape,
                  onChanged: (value) {
                    setState(() {
                      selectedShape = value;
                    });
                    context.read<ContractReviewBloc>().add(
                        ThirdPartyInspectionEvent(thirdPartyInspection: true));
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

                    context.read<ContractReviewBloc>().add(
                        ThirdPartyInspectionEvent(thirdPartyInspection: false));
                  },
                ),
                Text("No"),
              ],
            ),
          )),
    );
  }
}
