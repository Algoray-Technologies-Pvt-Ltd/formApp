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
import 'package:formapp/contractReview/view/widgets/ammandmentdate.dart';
import 'package:formapp/contractReview/view/widgets/anySpecialRequirementsWidget.dart';
import 'package:formapp/contractReview/view/widgets/approvalbydate.dart';
import 'package:formapp/contractReview/view/widgets/approveddate.dart';
import 'package:formapp/contractReview/view/widgets/customernameWidget.dart';
import 'package:formapp/contractReview/view/widgets/enquiryDate.dart';
import 'package:formapp/contractReview/view/widgets/insurance.dart';
import 'package:formapp/contractReview/view/widgets/poNodate.dart';
import 'package:formapp/contractReview/view/widgets/porecDate.dart';
import 'package:formapp/contractReview/view/widgets/productDescriptionWidget.dart';
import 'package:formapp/main.dart';
import 'package:formapp/widgets/ktextFeild.dart';

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
        },
        child: const Icon(Icons.save),
      ),
      appBar: AppBar(
        actions: [
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: ElevatedButton(
          //       onPressed: () {
          //         context.read<ContractReviewBloc>().add(SaveEvent());
          //       },
          //       child: Padding(
          //         padding: const EdgeInsets.all(5),
          //         child: Text('Save ContractReview '),
          //       )),
          // ),
        ],
        elevation: 0,
        title: Text('Create Contract Review'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
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
                    MaterialSpecificationEvent(materialSpecification: value));
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
                context.read<ContractReviewBloc>().add(LdEvent(ldEvent: value));
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
                context
                    .read<ContractReviewBloc>()
                    .add(AcknowledgementNoEvent(acknowledgementNo: value));
              },
              initialText: '',
              hintText: 'Acknowledgement No',
            ),
            AcknoledementdateWidget(),
            KTextField(
              onChanged: (value) {
                context
                    .read<ContractReviewBloc>()
                    .add(ReviewedByEvent(reviewedBy: value));
              },
              initialText: '',
              hintText: 'Reviewed By',
            ),
            ReviewedDateWidget(),
            KTextField(
              onChanged: (value) {
                context
                    .read<ContractReviewBloc>()
                    .add(ApprovelByEvent(approvedBy: value));
              },
              initialText: '',
              hintText: 'Approvel By',
            ),
            ApprovelByDateWidget(),
            AmandmentWidget(),
            AmmandmentdateWidget(),
            KTextField(
              onChanged: (value) {
                context
                    .read<ContractReviewBloc>()
                    .add(DetailsofAmandmentEvent(detailsofAmandment: value));
              },
              initialText: '',
              hintText: 'Details of Amandment',
            ),
            KTextField(
              onChanged: (value) {
                context
                    .read<ContractReviewBloc>()
                    .add(AmandmentReviewedByEvent(reviewedBy: value));
              },
              initialText: '',
              hintText: 'Amandment Review By',
            ),
            AmmandmentReviewdateWidget(),
            KTextField(
              onChanged: (value) {
                context
                    .read<ContractReviewBloc>()
                    .add(ApprovedByEvent(approvedBy: value));
              },
              initialText: '',
              hintText: 'Approved By',
            ),
            ApprovedDateWidget(),
          ],
        ),
      ),
    );
  }
}

