import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

final currency = "\u{20B9}";

final kHintTextStyle = TextStyle(
  color: Colors.white54,
  fontFamily: 'OpenSans',
);

final kLabelStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

// final kDashListStyle = GoogleFonts.roboto(
//   color: Colors.black,
//   fontSize: 22,
//   // fontWeight: FontWeight.bold,
// );

// final kadminDashListStyle = GoogleFonts.roboto(
//   color: Colors.black,
//   fontSize: 18,
//   // fontWeight: FontWeight.bold,
// );

// final kTotalListStyle = GoogleFonts.roboto(
//   color: Colors.white,
//   fontSize: 20,
//   fontWeight: FontWeight.bold,
// );

// final kNormalStyle = GoogleFonts.roboto(

//     // fontWeight: FontWeight.bold,
//     );

final kHeadStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontSize: 32,
  fontFamily: 'OpenSans',
);

final kBoxDecorationStyle = BoxDecoration(
  color: Color(0xFF546e74),
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);

class SettingsTagNames {
  static String get DBName_Tag => "";

  static String get Company_Name_Tag => "";
  static String get Branch_Name_Tag => "";

  static String get Login_User_Name_tag => "";
  static String get Login_User_Emp_ID => "";

  static String get Base_URL_Tag => "";

  static String get Default_Cash_ID => "";
}

class HiveTagNames {
  static late String dbname;

  static set setDBName(String databaseName) {
    dbname = databaseName;
  }

  static void setDB(String db) {
    dbname = db + '_';
  }

  static String get Items_Hive_Tag => 'items';
  static String get ItemGroups_Hive_Tag => dbname + 'item_groups';

  static String get Ledgers_Hive_Tag => 'ledgers';
  static String get AccountGroups_Hive_Tag => dbname + 'acc_groups';

  static String get Uom_Hive_Tag => dbname + 'uoms';
  static String get PriceLists_Hive_Tag => dbname + 'prices';
  static String get Godowns_Hive_Tag => dbname + 'godowns';

  static String get Employee_Hive_Tag => dbname + 'employees';
  static String get UserGroups_Hive_Tag => dbname + 'user_groups';
  static String get UserPermissions_Hive_Tag => dbname + 'user_perms';

  static String get Contact_Hive_Tag => dbname + 'contacts';

  static String get UI_Config_Hive_Tag => 'ui_config';

  static String get Settings_Hive_Tag => 'settings';

  static String get Values_Hive_Tag => 'values';
}
