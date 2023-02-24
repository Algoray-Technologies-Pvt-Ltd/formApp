import 'package:flutter/material.dart';

class EnquiryApprovalWidget extends StatefulWidget {
  const EnquiryApprovalWidget({super.key});

  @override
  State<EnquiryApprovalWidget> createState() => _EnquiryApprovalWidgetState();
}

class _EnquiryApprovalWidgetState extends State<EnquiryApprovalWidget> {
  bool? approval = false;
  bool? enquiry = false;

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
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                    'Approval',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
              ],
            ),
          )),
    );
  }
}

class OrderAuditWidget extends StatefulWidget {
  const OrderAuditWidget({super.key});

  @override
  State<OrderAuditWidget> createState() => _OrderAuditWidgetState();
}

class _OrderAuditWidgetState extends State<OrderAuditWidget> {
  bool? order = false;
  bool? audit = false;
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
                    'Order',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Audit',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Checkbox(
                  value: audit,
                  onChanged: (value) {
                    setState(() {
                      audit = value;

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
