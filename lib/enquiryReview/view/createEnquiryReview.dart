import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
import 'package:formapp/main.dart';
import 'package:formapp/widgets/ktextFeild.dart';
import 'package:formapp/enquiryReview/bloc/bloc/enquiry_review_bloc.dart';

class CreateEnquiryReview extends StatelessWidget {
  const CreateEnquiryReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: primaryColor,
          onPressed: () {
            context.read<EnquiryReviewBloc>().add(SaveEvent());
            Navigator.of(context).pop();
          },
          child: const Icon(Icons.save),
        ),
        appBar: AppBar(
          elevation: 0,
          title: Text('Create Enquiry Review'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Wrap(children: [
          KTextField(
            // onChanged: (value) {
            //   context.read<EnquiryReviewBloc>().add(Cus(num: value));
            // },
            initialText: '',
            hintText: 'Customer Name',
          ),
          EnquiryRecDateWidget(),
          KTextField(
            onChanged: (value) {
              context
                  .read<EnquiryReviewBloc>()
                  .add(EnquiryNOEvent(enquiry: value));
            },
            initialText: '',
            hintText: 'Enquiry No',
          ),
          EnquiryEnDateWidget(),
          ProductDescriptionWidgetEn(),
          QtyWidgetEn(),
          OfferDueTimeDateWidget(),
          TermsandConditionsWidgetEn(),
          KTextField(
            onChanged: (value) {
              context
                  .read<EnquiryReviewBloc>()
                  .add(ReviewedByEvent(reviewedBy: value));
            },
            initialText: '',
            hintText: 'Reviewed By',
          ),
          ReviewedDateWidgetEn(),
          KTextField(
            onChanged: (value) {
              context
                  .read<EnquiryReviewBloc>()
                  .add(ApprovelByEvent(approval: value));
            },
            initialText: '',
            hintText: 'Approvel By ',
          ),
          ApprovelDateWidgetEn(),
          AmandmentWidgetEn(),
          AmmandmentdateWidgetEn(),
          KTextField(
            onChanged: (value) {
              context
                  .read<EnquiryReviewBloc>()
                  .add(DetailsofAmandmentEvent(details: value));
            },
            initialText: '',
            hintText: 'Details of Amandment',
          ),
          KTextField(
            onChanged: (value) {
              context
                  .read<EnquiryReviewBloc>()
                  .add(AmandmentReviewByEvent(AmandmentReviewBy: value));
            },
            initialText: '',
            hintText: 'Amandment Review By',
          ),
          AmmandmentReviewdateWidgetEn(),
          KTextField(
            onChanged: (value) {
              context
                  .read<EnquiryReviewBloc>()
                  .add(AmandmentApprovedByEvent(Amandment: value));
            },
            initialText: '',
            hintText: 'Approved By',
          ),
          ApprovedDateWidgetEn()
        ])));
  }
}
