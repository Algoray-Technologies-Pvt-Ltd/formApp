import 'package:flutter/material.dart';

class QtyWidgetEn extends StatefulWidget {
  const QtyWidgetEn({super.key});

  @override
  State<QtyWidgetEn> createState() => _QtyWidgetEnState();
}

class _QtyWidgetEnState extends State<QtyWidgetEn> {
  String? selectedShape = "Qty";
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
                    'Qty ',
                    
                  ),
                ),
                Radio(
                  value: "true",
                  groupValue: selectedShape,
                  onChanged: (value) {
                    setState(() {
                      selectedShape = value;
                    });
                    // context
                    //     .read<OderDetailsBloc>()
                    //     .add(PhotoPrintEvent(photoPrint: true));
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

                    // context
                    //     .read<OderDetailsBloc>()
                    //     .add(PhotoPrintEvent(photoPrint: false));
                  },
                ),
                Text("No"),
              ],
            ),
          )),
    );
  }
}
