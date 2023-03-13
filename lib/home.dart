import 'package:flutter/material.dart';

import 'package:formapp/Daily_Stock_Statement/bloc/daily_stock_statement_bloc.dart';
import 'package:formapp/Gate_Inward_Register/bloc/gate_inward_register_bloc.dart';
import 'package:formapp/Gate_Inward_Register/view/gateInwardRegister.dart';
import 'package:formapp/Gate_Outward_Register/bloc/gate_outward_register_bloc.dart';
import 'package:formapp/Goods_Reciept_Note/bloc/goods_reciept_note_bloc.dart';
import 'package:formapp/Goods_Reciept_Note/view/goodsRecieptNote.dart';
import 'package:formapp/Issue&Return_Register/bloc/issue_and_return_register_bloc.dart';
import 'package:formapp/Issue&Return_Register/view/issueCumReturnSlipScreen.dart';
import 'package:formapp/Material_Required_Form/bloc/material_required_form_bloc.dart';
import 'package:formapp/Re-order_Level_Chart/bloc/re_order_level_chart_bloc.dart';
import 'package:formapp/Re-order_Level_Chart/view/reorderLevelChartScreen.dart';
import 'package:formapp/Tools_List/bloc/tools_list_bloc.dart';
import 'package:formapp/Tools_List/view/toolsListScreen.dart';
import 'package:formapp/contractReview/bloc/bloc/contract_review_bloc.dart';
import 'package:formapp/contractReview/view/contractReviewScreen.dart';
import 'package:formapp/customerComplaintReg/bloc/bloc/customer_complaint_reg_bloc.dart';
import 'package:formapp/customerOrderReg/bloc/bloc/customer_order_reg_bloc.dart';
import 'package:formapp/customerOrderReg/view/customerOrderReg.dart';
import 'package:formapp/customerVisitReport/bloc/bloc/customerVisitReport_bloc.dart';
import 'package:formapp/customerVisitReport/view/customerVisitReport.dart';
import 'package:formapp/enquiryCumQuatation/bloc/bloc/enquiry_cum_quatation_bloc.dart';
import 'package:formapp/enquiryCumQuatation/view/enquiryCumQuatation.dart';
import 'package:formapp/enquiryReview/bloc/bloc/enquiry_review_bloc.dart';
import 'package:formapp/enquiryReview/view/enquiryReview.dart';
import 'package:formapp/marketingVisitReport/bloc/bloc/marketing_visit_report_bloc.dart';
import 'package:formapp/marketingVisitReport/view/marketingVisitReport.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Daily_Stock_Statement/view/dailyStockStatementScreen.dart';
import 'Gate_Outward_Register/view/gateOutwardRegister.dart';
import 'Material_Required_Form/view/materialRequiredFormScreen.dart';
import 'customerComplaintReg/view/CustomerComplaintRegScreen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Wrap(
          spacing: 13,
          runSpacing: 10,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              color: Color.fromARGB(255, 187, 229, 250),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return BlocProvider(
                    lazy: false,
                    create: (context) =>
                        ContractReviewBloc()..add(FetchCEvent()),
                    child: ContractReviewScreen(),
                  );
                }));
              },
              child: Text('ContractReview'),
            ),
            MaterialButton(
              color: Color.fromARGB(255, 187, 229, 250),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                  return BlocProvider(
                    create: (context) =>
                        CustomerComplaintRegBloc()..add(FetchEvent()),
                    child: CustomerComplaintRegScreen(),
                  );
                }));
              },
              child: Text('CustomerComplaintReg'),
            ),
            MaterialButton(
              color: Color.fromARGB(255, 187, 229, 250),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                  return BlocProvider(
                    create: (context) => CustomerOrderRegBloc(),
                    child: CustomerOrderRegScreen(),
                  );
                }));
              },
              child: Text('CustomerOrderRegScreen'),
            ),
            MaterialButton(
              color: Color.fromARGB(255, 187, 229, 250),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                  return BlocProvider(
                    create: (context) => CustomerVisitReportBloc(),
                    child: customerVisitReportScreen(),
                  );
                }));
              },
              child: Text('customerVisitReport'),
            ),
            MaterialButton(
              color: Color.fromARGB(255, 187, 229, 250),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                  return BlocProvider(
                    create: (context) => EnquiryCumQuatationBloc(),
                    child: EnquiryCumQuatationScreen(),
                  );
                }));
              },
              child: Text('enquiryCumQuatation'),
            ),
            MaterialButton(
              color: Color.fromARGB(255, 187, 229, 250),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                  return BlocProvider(
                    create: (context) => EnquiryReviewBloc(),
                    child: EnquiryReviewScreen(),
                  );
                }));
              },
              child: Text('enquiryReview'),
            ),
            MaterialButton(
              color: Color.fromARGB(255, 187, 229, 250),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                  return BlocProvider(
                    create: (context) => MarketingVisitReportBloc(),
                    child: MarketingVisitReportScreen(),
                  );
                }));
              },
              child: Text('MarketingVisitReport'),
            ),
            MaterialButton(
              color: const Color.fromARGB(255, 187, 229, 250),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return BlocProvider(
                    lazy: false,
                    create: (context) => DailyStockStatementBloc()
                      ..add(FetchingDailyStockEvent()),
                    child: const DailyStockStatementScreen(),
                  );
                }));
              },
              child: const Text('Daily Stock Statement'),
            ),
            MaterialButton(
              color: const Color.fromARGB(255, 187, 229, 250),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return BlocProvider(
                    lazy: false,
                    create: (context) => GateInwardRegisterBloc()
                      ..add(FetchingGateInwardEvent()),
                    child: const GateInwardRegisterScreen(),
                  );
                }));
              },
              child: const Text('Gate Inward Register'),
            ),
            MaterialButton(
              color: const Color.fromARGB(255, 187, 229, 250),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return BlocProvider(
                    create: (context) => GateOutwardRegisterBloc()
                      ..add(FetchingGateOutwardEvent()),
                    child: const GateOutwardRegisterScreen(),
                  );
                }));
              },
              child: const Text('Gate Outward Register'),
            ),
            MaterialButton(
              color: const Color.fromARGB(255, 187, 229, 250),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return BlocProvider(
                    create: (context) =>
                        GoodsRecieptNoteBloc()..add(FetchingGRNEvent()),
                    child: const GoodsRecieptNoteScreen(),
                  );
                }));
              },
              child: const Text('Goods Reciept Note'),
            ),
            MaterialButton(
              color: const Color.fromARGB(255, 187, 229, 250),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return BlocProvider(
                    create: (context) => IssueAndReturnRegisterBloc(),
                    child: const IssueCumReturnSlipScreen(),
                  );
                }));
              },
              child: const Text('Issue Cum Return Slip'),
            ),
            MaterialButton(
              color: const Color.fromARGB(255, 187, 229, 250),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return BlocProvider(
                    create: (context) => MaterialRequiredFormBloc(),
                    child: const MaterialRequiredFormScreen(),
                  );
                }));
              },
              child: const Text('Material Required Form'),
            ),
            MaterialButton(
              color: const Color.fromARGB(255, 187, 229, 250),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return BlocProvider(
                    create: (context) => ReOrderLevelChartBloc(),
                    child: const ReorderLevelChartScreen(),
                  );
                }));
              },
              child: const Text('Reorder Level Chart'),
            ),
            MaterialButton(
              color: const Color.fromARGB(255, 187, 229, 250),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return BlocProvider(
                    create: (context) => ToolsListBloc(),
                    child: const ToolListScreen(),
                  );
                }));
              },
              child: const Text('Tools List'),
            ),
          ],
        ),
      ),
    );
  }
}
