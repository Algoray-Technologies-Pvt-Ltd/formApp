import 'package:flutter/material.dart';
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
import 'package:formapp/contractReview/view/widgets/enquiryDate.dart';
import 'package:formapp/contractReview/view/widgets/insurance.dart';
import 'package:formapp/contractReview/view/widgets/poNodate.dart';
import 'package:formapp/contractReview/view/widgets/porecDate.dart';
import 'package:formapp/contractReview/view/widgets/productDescriptionWidget.dart';
import 'package:formapp/widgets/ktextFeild.dart';

import 'widgets/qtyselectionwidget.dart';

class CreateContractReview extends StatelessWidget {
  const CreateContractReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text('Save ContractReview '),
                )),
          ),
        ],
        elevation: 0,
        title: Text('Create Contract Review'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            KTextField(
              initialText: '',
              hintText: 'Customer Name',
            ),
            PoRecWidget(),
            KTextField(
              initialText: '',
              hintText: 'PO No',
            ),
            PoNoDateWidget(),
            KTextField(
              initialText: '',
              hintText: 'Enquiry No',
            ),
            EnquiryDateWidget(),
            ProductDescriptionWidget(),
            QtyWidget(),
            PoDueDateWidget(),
            TermsandConditionsWidget(),
            KTextField(
              initialText: '',
              hintText: 'Material',
            ),
            KTextField(
              initialText: '',
              hintText: 'Material Specificattion',
            ),
            KTextField(
              initialText: '',
              hintText: 'Payment',
            ),
            KTextField(
              initialText: '',
              hintText: 'Delivery At',
            ),
            KTextField(
              initialText: '',
              hintText: 'LD',
            ),
            ThirdPartyInspectionWidget(),
            AnySpecialRequirementsWidget(),
            KTextField(
              initialText: '',
              hintText: 'Transport',
            ),
            InsuranceWidget(),
            KTextField(
              initialText: '',
              hintText: 'Acknowledgement No',
            ),
            AcknoledementdateWidget(),
            KTextField(
              initialText: '',
              hintText: 'Reviewed By',
            ),
            ReviewedDateWidget(),
            KTextField(
              initialText: '',
              hintText: 'Approvel By',
            ),
            ApprovelByDateWidget(),
            AmandmentWidget(),
            AmmandmentdateWidget(),
            KTextField(
              initialText: '',
              hintText: 'Details of Amandment',
            ),
            KTextField(
              initialText: '',
              hintText: 'Amandment Review By',
            ),
            AmmandmentReviewdateWidget(),
            KTextField(
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
