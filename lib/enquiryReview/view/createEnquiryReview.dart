import 'package:flutter/material.dart';
import 'package:formapp/enquiryReview/view/widgets/QtyEn.dart';
import 'package:formapp/enquiryReview/view/widgets/amandmentEn.dart';
import 'package:formapp/enquiryReview/view/widgets/amandmentReviewdateEn.dart';
import 'package:formapp/enquiryReview/view/widgets/ammandmentdateEn.dart';
import 'package:formapp/enquiryReview/view/widgets/approveddateEn.dart';
import 'package:formapp/enquiryReview/view/widgets/approvelDateEn.dart';
import 'package:formapp/enquiryReview/view/widgets/enRecDate.dart';
import 'package:formapp/enquiryReview/view/widgets/enquiryDateEn.dart';
import 'package:formapp/enquiryReview/view/widgets/offerdueDateTime.dart';
import 'package:formapp/enquiryReview/view/widgets/productdescriptionEn.dart';
import 'package:formapp/enquiryReview/view/widgets/reviewedDateEn.dart';
import 'package:formapp/enquiryReview/view/widgets/termsEN.dart';
import 'package:formapp/widgets/ktextFeild.dart';

class CreateEnquiryReview extends StatelessWidget {
  const CreateEnquiryReview({super.key});

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
            child: Wrap(children: [
          KTextField(
            initialText: '',
            hintText: 'Customer Name',
          ),
          EnquiryRecDateWidget(),
          KTextField(
            initialText: '',
            hintText: 'Enquiry No',
          ),
          EnquiryEnDateWidget(),
          ProductDescriptionWidgetEn(),
          QtyWidgetEn(),
          OfferDueTimeDateWidget(),
          TermsandConditionsWidgetEn(),
          KTextField(
            initialText: '',
            hintText: 'Reviewed By',
          ),
          ReviewedDateWidgetEn(),
          KTextField(
            initialText: '',
            hintText: 'Approvel By ',
          ),
          ApprovelDateWidgetEn(),
          AmandmentWidgetEn(),
          AmmandmentdateWidgetEn(),
          KTextField(
            initialText: '',
            hintText: 'Details of Amandment',
          ),
          KTextField(
            initialText: '',
            hintText: 'Amandment Review By',
          ),
          AmmandmentReviewdateWidgetEn(),
          KTextField(
            initialText: '',
            hintText: 'Approved By',
          ),
          ApprovedDateWidgetEn()
        ])));
  }
}
