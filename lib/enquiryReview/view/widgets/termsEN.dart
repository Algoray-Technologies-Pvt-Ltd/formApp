import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/enquiryReview/bloc/bloc/enquiry_review_bloc.dart';

class TermsandConditionsWidgetEn extends StatefulWidget {
  const TermsandConditionsWidgetEn({super.key});

  @override
  State<TermsandConditionsWidgetEn> createState() =>
      _TermsandConditionsWidgetEnState();
}

class _TermsandConditionsWidgetEnState
    extends State<TermsandConditionsWidgetEn> {
  String? selectedShape = "TermsandConditions";
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
                    'Terms & Conditions',
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
                        .read<EnquiryReviewBloc>()
                        .add(ProductDescriptionEvent(productDescription: true));
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

                    context.read<EnquiryReviewBloc>().add(
                        ProductDescriptionEvent(productDescription: false));
                  },
                ),
                Text("No"),
              ],
            ),
          )),
    );
  }
}
