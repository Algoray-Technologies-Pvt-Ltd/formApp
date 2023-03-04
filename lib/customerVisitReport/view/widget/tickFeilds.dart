import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/customerVisitReport/bloc/bloc/customerVisitReport_bloc.dart';

class EnquiryApprovalWidget extends StatefulWidget {
  const EnquiryApprovalWidget({super.key});

  @override
  State<EnquiryApprovalWidget> createState() => _EnquiryApprovalWidgetState();
}

class _EnquiryApprovalWidgetState extends State<EnquiryApprovalWidget> {
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
                  value: context.select((CustomerVisitReportBloc bloc) =>
                          bloc.state.customerVisitReport?.enquiry) ??
                      false,
                  onChanged: (value) {
                    context
                        .read<CustomerVisitReportBloc>()
                        .add(EnquiryEvent(enquiry: value!));
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Approval',
                  ),
                ),
                Checkbox(
                  value: context.select((CustomerVisitReportBloc bloc) =>
                          bloc.state.customerVisitReport?.approval) ??
                      false,
                  onChanged: (value) {
                    context
                        .read<CustomerVisitReportBloc>()
                        .add(ApprovalEvent(approval: value!));
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
                  ),
                ),
                Checkbox(
                  value: context.select((CustomerVisitReportBloc bloc) =>
                          bloc.state.customerVisitReport?.order) ??
                      false,
                  onChanged: (value) {
                    context
                        .read<CustomerVisitReportBloc>()
                        .add(OrderEvent(order: value!));
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Audit',
                  ),
                ),
                Checkbox(
                  value: context.select((CustomerVisitReportBloc bloc) =>
                          bloc.state.customerVisitReport?.audit) ??
                      false,
                  onChanged: (value) {
                    context
                        .read<CustomerVisitReportBloc>()
                        .add(AuditEvent(Audit: value!));
                  },
                ),
              ],
            ),
          )),
    );
  }
}
