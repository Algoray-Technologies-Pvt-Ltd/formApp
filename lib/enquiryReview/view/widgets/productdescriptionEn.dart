import 'package:flutter/material.dart';

class ProductDescriptionWidgetEn extends StatefulWidget {
  const ProductDescriptionWidgetEn({super.key});

  @override
  State<ProductDescriptionWidgetEn> createState() =>
      _ProductDescriptionWidgetEnState();
}

class _ProductDescriptionWidgetEnState
    extends State<ProductDescriptionWidgetEn> {
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
                    'Product Description',
               
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
