import 'package:flutter/material.dart';

class EnquiryNegotationApprovalWidget extends StatefulWidget {
  const EnquiryNegotationApprovalWidget({super.key});

  @override
  State<EnquiryNegotationApprovalWidget> createState() =>
      _EnquiryNegotationApprovalWidgetState();
}

class _EnquiryNegotationApprovalWidgetState
    extends State<EnquiryNegotationApprovalWidget> {
  bool? approval = false;
  bool? enquiry = false;
  bool? order = false;
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
                    'Enquiry',
                 
                  ),
                ),
                Checkbox(
                  value: enquiry,
                  onChanged: (value) {
                    setState(() {
                      enquiry = value;

                      // context
                      //     .read<OderDetailsBloc>()
                      //     .add(PhotoPrintEvent(photoPrint: true));
                    });
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Negotation',

                  ),
                ),
                Checkbox(
                  value: approval,
                  onChanged: (value) {
                    setState(() {
                      approval = value;

                      // context
                      //     .read<OderDetailsBloc>()
                      //     .add(PhotoPrintEvent(photoPrint: true));
                    });
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Order ',
            
                  ),
                ),
                Checkbox(
                  value: order,
                  onChanged: (value) {
                    setState(() {
                      order = value;

                      // context
                      //     .read<OderDetailsBloc>()
                      //     .add(PhotoPrintEvent(photoPrint: true));
                    });
                  },
                ),
              ],
            ),
          )),
    );
  }
}

class AmendmentPaymentWidget extends StatefulWidget {
  const AmendmentPaymentWidget({super.key});

  @override
  State<AmendmentPaymentWidget> createState() => _AmendmentPaymentWidgetState();
}

class _AmendmentPaymentWidgetState extends State<AmendmentPaymentWidget> {
  bool? amendment = false;
  bool? paymentCollection = false;
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
                    'Amendment',
                 
                  ),
                ),
                Checkbox(
                  value: amendment,
                  onChanged: (value) {
                    setState(() {
                      amendment = value;

                      // context
                      //     .read<OderDetailsBloc>()
                      //     .add(PhotoPrintEvent(photoPrint: true));
                    });
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Payment Collection',
                  
                  ),
                ),
                Checkbox(
                  value: paymentCollection,
                  onChanged: (value) {
                    setState(() {
                      paymentCollection = value;

                      // context
                      //     .read<OderDetailsBloc>()
                      //     .add(PhotoPrintEvent(photoPrint: true));
                    });
                  },
                ),
              ],
            ),
          )),
    );
  }
}
