import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/marketingVisitReport/bloc/bloc/marketing_visit_report_bloc.dart';

class EnquiryNegotationApprovalWidget extends StatefulWidget {
  const EnquiryNegotationApprovalWidget({super.key});

  @override
  State<EnquiryNegotationApprovalWidget> createState() =>
      _EnquiryNegotationApprovalWidgetState();
}

class _EnquiryNegotationApprovalWidgetState
    extends State<EnquiryNegotationApprovalWidget> {
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
                  value: context.select((MarketingVisitReportBloc bloc) =>
                          bloc.state.marketingVisitReport?.enquiry) ??
                      false,
                  onChanged: (value) {
                    context
                        .read<MarketingVisitReportBloc>()
                        .add(EnquiryEvent(enquiry: value!));
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Negotation',
                  ),
                ),
                Checkbox(
                  value: context.select((MarketingVisitReportBloc bloc) =>
                          bloc.state.marketingVisitReport?.negotation) ??
                      false,
                  onChanged: (value) {
                    context
                        .read<MarketingVisitReportBloc>()
                        .add(NegotationEvent(negotation: value!));
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Order ',
                  ),
                ),
                Checkbox(
                  value: context.select((MarketingVisitReportBloc bloc) =>
                          bloc.state.marketingVisitReport?.order) ??
                      false,
                  onChanged: (value) {
                    context
                        .read<MarketingVisitReportBloc>()
                        .add(OrderEvent(order: value!));
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
                  value: context.select((MarketingVisitReportBloc bloc) =>
                          bloc.state.marketingVisitReport?.amendment) ??
                      false,
                  onChanged: (value) {
                    context
                        .read<MarketingVisitReportBloc>()
                        .add(AmendmentEvent(amendment: value!));
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Payment Collection',
                  ),
                ),
                Checkbox(
                  value: context.select((MarketingVisitReportBloc bloc) =>
                          bloc.state.marketingVisitReport?.paymentCollection) ??
                      false,
                  onChanged: (value) {
                    context
                        .read<MarketingVisitReportBloc>()
                        .add(PaymentCollectionEvent(paymentCollection: value!));
                  },
                ),
              ],
            ),
          )),
    );
  }
}
