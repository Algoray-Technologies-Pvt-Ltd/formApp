import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/contractReview/bloc/bloc/contract_review_bloc.dart';
import 'package:formapp/contractReview/view/widgets/Acknoledementdate.dart';
import 'package:formapp/contractReview/view/widgets/PoDueDate.dart';
import 'package:formapp/contractReview/view/widgets/ReviewedDate.dart';
import 'package:formapp/contractReview/view/widgets/TermsandConditions.dart';
import 'package:formapp/contractReview/view/widgets/ThirdPartyInspection.dart';
import 'package:formapp/contractReview/view/widgets/amandment.dart';
import 'package:formapp/contractReview/view/widgets/amandmentReviewdate.dart';
import 'package:formapp/contractReview/view/widgets/amanmentReviewdBy.dart';
import 'package:formapp/contractReview/view/widgets/ammandmentdate.dart';
import 'package:formapp/contractReview/view/widgets/anySpecialRequirementsWidget.dart';
import 'package:formapp/contractReview/view/widgets/approvalbydate.dart';
import 'package:formapp/contractReview/view/widgets/approvedby.dart';
import 'package:formapp/contractReview/view/widgets/approveddate.dart';
import 'package:formapp/contractReview/view/widgets/approvel.dart';
import 'package:formapp/contractReview/view/widgets/customernameWidget.dart';
import 'package:formapp/contractReview/view/widgets/employeeFeild.dart';
import 'package:formapp/contractReview/view/widgets/enquiryDate.dart';
import 'package:formapp/contractReview/view/widgets/insurance.dart';
import 'package:formapp/contractReview/view/widgets/poNodate.dart';
import 'package:formapp/contractReview/view/widgets/porecDate.dart';
import 'package:formapp/contractReview/view/widgets/productDescriptionWidget.dart';
import 'package:formapp/main.dart';
import 'package:formapp/widgets/ktextFeild.dart';
import 'package:intl/intl.dart';

import '../../widgets/KAutoText.dart';
import 'widgets/qtyselectionwidget.dart';

class CreateContractReview extends StatelessWidget {
  const CreateContractReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          context.read<ContractReviewBloc>().add(SaveEvent());
          Navigator.of(context).pop();
        },
        child: const Icon(Icons.save),
      ),
      appBar: AppBar(
        elevation: 0,
        title: Text('Create Contract Review'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 2, color: Colors.grey)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 6,
                    child: Table(
                      border: TableBorder.all(
                          color: Colors.grey,
                          width: 1.5,
                          borderRadius: BorderRadius.circular(5)),
                      columnWidths: const {
                        0: FlexColumnWidth(5),
                        1: FlexColumnWidth(5),
                      },
                      children: [
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: const Text(
                              "FT No.",
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ),
                          AutoGeneratedText(autoGeneratedValue: 1),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: const Text(
                              "Rev No.",
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ),
                          AutoGeneratedText(autoGeneratedValue: 25),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: const Text(
                              "Page No.",
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ),
                          AutoGeneratedText(autoGeneratedValue: 2),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: const Text(
                              "Date",
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ),
                          Text(
                            "${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}",
                            style: const TextStyle(fontSize: 15.0),
                          ),
                        ]),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 2, color: Colors.grey)),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    child: Wrap(
                      children: [
                        CustomerNmaeWidget(),
                        PoRecWidget(),
                        KTextField(
                          onChanged: (value) {
                            context
                                .read<ContractReviewBloc>()
                                .add(PoNumberEvent(no: value));
                          },
                          initialText: '',
                          hintText: 'PO No',
                        ),
                        PoNoDateWidget(),
                        KTextField(
                          onChanged: (value) {
                            context
                                .read<ContractReviewBloc>()
                                .add(EnquiryNoEvent(num: value));
                          },
                          initialText: '',
                          hintText: 'Enquiry No',
                        ),
                        EnquiryDateWidget(),
                        ProductDescriptionWidget(),
                        QtyWidget(),
                        PoDueDateWidget(),
                        TermsandConditionsWidget(),
                        KTextField(
                          onChanged: (value) {
                            context
                                .read<ContractReviewBloc>()
                                .add(MaterialEvent(material: value));
                          },
                          initialText: '',
                          hintText: 'Material',
                        ),
                        KTextField(
                          onChanged: (value) {
                            context.read<ContractReviewBloc>().add(
                                MaterialSpecificationEvent(
                                    materialSpecification: value));
                          },
                          initialText: '',
                          hintText: 'Material Specificattion',
                        ),
                        KTextField(
                          onChanged: (value) {
                            context
                                .read<ContractReviewBloc>()
                                .add(PaymentEvent(payment: value));
                          },
                          initialText: '',
                          hintText: 'Payment',
                        ),
                        KTextField(
                          onChanged: (value) {
                            context
                                .read<ContractReviewBloc>()
                                .add(DeliveryAt(deliveryAt: value));
                          },
                          initialText: '',
                          hintText: 'Delivery At',
                        ),
                        KTextField(
                          onChanged: (value) {
                            context
                                .read<ContractReviewBloc>()
                                .add(LdEvent(ldEvent: value));
                          },
                          initialText: '',
                          hintText: 'LD',
                        ),
                        ThirdPartyInspectionWidget(),
                        AnySpecialRequirementsWidget(),
                        KTextField(
                          onChanged: (value) {
                            context
                                .read<ContractReviewBloc>()
                                .add(TransportEvent(transport: value));
                          },
                          initialText: '',
                          hintText: 'Transport',
                        ),
                        InsuranceWidget(),
                        KTextField(
                          onChanged: (value) {
                            context.read<ContractReviewBloc>().add(
                                AcknowledgementNoEvent(
                                    acknowledgementNo: value));
                          },
                          initialText: '',
                          hintText: 'Acknowledgement No',
                        ),
                        AcknoledementdateWidget(),
                        ReviewedByWidget(),
                        ReviewedDateWidget(),
                        ApprovelByWidget(),
                        ApprovelByDateWidget(),
                        AmandmentWidget(),
                        AmmandmentdateWidget(),
                        KTextField(
                          onChanged: (value) {
                            context.read<ContractReviewBloc>().add(
                                DetailsofAmandmentEvent(
                                    detailsofAmandment: value));
                          },
                          initialText: '',
                          hintText: 'Details of Amandment',
                        ),
                        AmandmentReviewBy(),
                        AmmandmentReviewdateWidget(),
                        ApprovedWidget(),
                        ApprovedDateWidget(),
                        SizedBox(
                          height: 150,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
