import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'LedMasterHiveModel.g.dart';

@HiveType(typeId: 21)
class LedgerMasterHiveModel extends HiveObject with EquatableMixin {
  @HiveField(0)
  String? LEDGER_ID;
  @HiveField(1)
  String? Ledger_Name;
  @HiveField(2)
  String? Ledger_Type;
  @HiveField(3)
  String? Group_Id;
  @HiveField(4)
  double? Opening_Balance;
  @HiveField(5)
  DateTime? Opening_Balance_Date;
  @HiveField(6)
  double? Closing_Balance;
  @HiveField(7)
  double? Turn_Over;
  @HiveField(8)
  bool? isIndividual;
  @HiveField(9)
  String? Narration;
  @HiveField(10)
  String? City;
  @HiveField(11)
  String? Address;
  @HiveField(12)
  String? Email;
  @HiveField(13)
  String? Phone_Number;
  @HiveField(14)
  String? Contact_Person_Name;
  @HiveField(15)
  String? Mobile_Number;
  @HiveField(16)
  String? Website;
  @HiveField(17)
  String? Contact_Person;
  @HiveField(18)
  String? Contant_Person_Number;
  @HiveField(19)
  String? PoBox;
  @HiveField(20)
  String? Country;
  @HiveField(21)
  String? Registration_Number;
  @HiveField(22)
  String? Default_Price_List_Id;
  @HiveField(23)
  String? State;
  @HiveField(24)
  String? Birth_Date;
  @HiveField(25)
  int? Credit_Period;
  @HiveField(26)
  String? ParentCompany;
  @HiveField(27)
  String? Fax;
  @HiveField(28)
  double? creditAllowed;
  @HiveField(29)
  String? paymentTerms;
  @HiveField(30)
  double? Tax_Rate;
  @HiveField(31)
  String? Type_Of_Supply;
  @HiveField(32)
  String? Default_Tax_Ledger;
  @HiveField(33)
  String? TRN;
  @HiveField(34)
  bool? DefaultRecord;
  @HiveField(35)
  String? DbName;
  @HiveField(36)
  double? crAmount = 0;
  @HiveField(37)
  double? drAmount = 0;
  @HiveField(38)
  double? amount = 0;

  LedgerMasterHiveModel({
    this.LEDGER_ID,
    this.Ledger_Name,
    this.Ledger_Type,
    this.Group_Id,
    this.Opening_Balance,
    this.Opening_Balance_Date,
    this.Closing_Balance,
    this.Turn_Over,
    this.isIndividual,
    this.Narration,
    this.City,
    this.Address,
    this.Email,
    this.Phone_Number,
    this.Contact_Person_Name,
    this.Mobile_Number,
    this.Website,
    this.Contact_Person,
    this.Contant_Person_Number,
    this.PoBox,
    this.Country,
    this.Registration_Number,
    this.Default_Price_List_Id,
    this.State,
    this.Birth_Date,
    this.Credit_Period,
    this.ParentCompany,
    this.Fax,
    this.creditAllowed,
    this.paymentTerms,
    this.Tax_Rate,
    this.Type_Of_Supply,
    this.Default_Tax_Ledger,
    this.TRN,
    this.DefaultRecord,
    this.DbName,
    this.crAmount,
    this.drAmount,
    this.amount,
  });

  LedgerMasterHiveModel copyWith({
    String? LEDGER_ID,
    String? Ledger_Name,
    String? Ledger_Type,
    String? Group_Id,
    double? Opening_Balance,
    DateTime? Opening_Balance_Date,
    double? Closing_Balance,
    double? Turn_Over,
    bool? isIndividual,
    String? Narration,
    String? City,
    String? Address,
    String? Email,
    String? Phone_Number,
    String? Contact_Person_Name,
    String? Mobile_Number,
    String? Website,
    String? Contact_Person,
    String? Contant_Person_Number,
    String? PoBox,
    String? Country,
    String? Registration_Number,
    String? Default_Price_List_Id,
    String? State,
    String? Birth_Date,
    int? Credit_Period,
    String? ParentCompany,
    String? Fax,
    double? creditAllowed,
    String? paymentTerms,
    double? Tax_Rate,
    String? Type_Of_Supply,
    String? Default_Tax_Ledger,
    String? TRN,
    bool? DefaultRecord,
    String? DbName,
    double? crAmount,
    double? drAmount,
    double? amount,
  }) {
    return LedgerMasterHiveModel(
      LEDGER_ID: LEDGER_ID ?? this.LEDGER_ID,
      Ledger_Name: Ledger_Name ?? this.Ledger_Name,
      Ledger_Type: Ledger_Type ?? this.Ledger_Type,
      Group_Id: Group_Id ?? this.Group_Id,
      Opening_Balance: Opening_Balance ?? this.Opening_Balance,
      Opening_Balance_Date: Opening_Balance_Date ?? this.Opening_Balance_Date,
      Closing_Balance: Closing_Balance ?? this.Closing_Balance,
      Turn_Over: Turn_Over ?? this.Turn_Over,
      isIndividual: isIndividual ?? this.isIndividual,
      Narration: Narration ?? this.Narration,
      City: City ?? this.City,
      Address: Address ?? this.Address,
      Email: Email ?? this.Email,
      Phone_Number: Phone_Number ?? this.Phone_Number,
      Contact_Person_Name: Contact_Person_Name ?? this.Contact_Person_Name,
      Mobile_Number: Mobile_Number ?? this.Mobile_Number,
      Website: Website ?? this.Website,
      Contact_Person: Contact_Person ?? this.Contact_Person,
      Contant_Person_Number:
          Contant_Person_Number ?? this.Contant_Person_Number,
      PoBox: PoBox ?? this.PoBox,
      Country: Country ?? this.Country,
      Registration_Number: Registration_Number ?? this.Registration_Number,
      Default_Price_List_Id:
          Default_Price_List_Id ?? this.Default_Price_List_Id,
      State: State ?? this.State,
      Birth_Date: Birth_Date ?? this.Birth_Date,
      Credit_Period: Credit_Period ?? this.Credit_Period,
      ParentCompany: ParentCompany ?? this.ParentCompany,
      Fax: Fax ?? this.Fax,
      creditAllowed: creditAllowed ?? this.creditAllowed,
      paymentTerms: paymentTerms ?? this.paymentTerms,
      Tax_Rate: Tax_Rate ?? this.Tax_Rate,
      Type_Of_Supply: Type_Of_Supply ?? this.Type_Of_Supply,
      Default_Tax_Ledger: Default_Tax_Ledger ?? this.Default_Tax_Ledger,
      TRN: TRN ?? this.TRN,
      DefaultRecord: DefaultRecord ?? this.DefaultRecord,
      DbName: DbName ?? this.DbName,
      crAmount: crAmount ?? this.crAmount,
      drAmount: drAmount ?? this.drAmount,
      amount: amount ?? this.amount,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'LEDGER_ID': LEDGER_ID,
      'Ledger_Name': Ledger_Name,
      'Ledger_Type': Ledger_Type,
      'Group_Id': Group_Id,
      'Opening_Balance': Opening_Balance ?? null,
      'Opening_Balance_Date': Opening_Balance_Date?.millisecondsSinceEpoch,
      'Closing_Balance': Closing_Balance,
      'Turn_Over': Turn_Over,
      'isIndividual': isIndividual,
      'Narration': Narration,
      'City': City,
      'Address': Address,
      'Email': Email,
      'Phone_Number': Phone_Number,
      'Contact_Person_Name': Contact_Person_Name,
      'Mobile_Number': Mobile_Number,
      'Website': Website,
      'Contact_Person': Contact_Person,
      'Contant_Person_Number': Contant_Person_Number,
      'PoBox': PoBox,
      'Country': Country,
      'Registration_Number': Registration_Number,
      'Default_Price_List_Id': Default_Price_List_Id,
      'State': State,
      'Birth_Date': Birth_Date,
      'Credit_Period': Credit_Period,
      'ParentCompany': ParentCompany,
      'Fax': Fax,
      'creditAllowed': creditAllowed,
      'paymentTerms': paymentTerms,
      'Tax_Rate': Tax_Rate,
      'Type_Of_Supply': Type_Of_Supply,
      'Default_Tax_Ledger': Default_Tax_Ledger,
      'TRN': TRN,
      'DefaultRecord': DefaultRecord,
      'DbName': DbName,
      'crAmount': crAmount,
      'drAmount': drAmount,
      'amount': amount,
    };
  }

  factory LedgerMasterHiveModel.fromMap(Map<String, dynamic> map) {
    return LedgerMasterHiveModel(
      LEDGER_ID: map['Ledger_Id'],
      Ledger_Name: map['Ledger_Name'],
      Ledger_Type: map['Ledger_Type'],
      Group_Id: map['Group_Id'],
      Opening_Balance: map['Opening_Balance']?.toDouble(),
      Opening_Balance_Date: map['Opening_Balance_Date'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['Opening_Balance_Date'])
          : null,
      Closing_Balance: map['Closing_Balance']?.toDouble(),
      Turn_Over: map['Turn_Over']?.toDouble(),
      isIndividual: map['isIndividual'],
      Narration: map['Narration'],
      City: map['City'],
      Address: map['Address'],
      Email: map['Email'],
      Phone_Number: map['Phone_Number'],
      Contact_Person_Name: map['Contact_Person_Name'],
      Mobile_Number: map['Mobile_Number'],
      Website: map['Website'],
      Contact_Person: map['Contact_Person'],
      Contant_Person_Number: map['Contant_Person_Number'],
      PoBox: map['PoBox'],
      Country: map['Country'],
      Registration_Number: map['Registration_Number'],
      Default_Price_List_Id: map['Default_Price_List_Id'],
      State: map['State'],
      Birth_Date: map['Birth_Date'],
      Credit_Period: map['Credit_Period']?.toInt(),
      ParentCompany: map['ParentCompany'],
      Fax: map['Fax'],
      creditAllowed: map['creditAllowed']?.toDouble(),
      paymentTerms: map['paymentTerms'],
      Tax_Rate: map['Tax_Rate']?.toDouble(),
      Type_Of_Supply: map['Type_Of_Supply'],
      Default_Tax_Ledger: map['Default_Tax_Ledger'],
      TRN: map['TRN'],
      DefaultRecord: map['DefaultRecord'],
      DbName: map['DbName'],
      crAmount: map['crAmount']?.toDouble(),
      drAmount: map['drAmount']?.toDouble(),
      amount: map['amount']?.toDouble(),
    );
  }

  String toJson() => json.encode(toMap());

  factory LedgerMasterHiveModel.fromJson(String source) =>
      LedgerMasterHiveModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'LedMasterHiveModel(LEDGER_ID: $LEDGER_ID, Ledger_Name: $Ledger_Name, Ledger_Type: $Ledger_Type, Group_Id: $Group_Id, Opening_Balance: $Opening_Balance, Opening_Balance_Date: $Opening_Balance_Date, Closing_Balance: $Closing_Balance, Turn_Over: $Turn_Over, isIndividual: $isIndividual, Narration: $Narration, City: $City, Address: $Address, Email: $Email, Phone_Number: $Phone_Number, Contact_Person_Name: $Contact_Person_Name, Mobile_Number: $Mobile_Number, Website: $Website, Contact_Person: $Contact_Person, Contant_Person_Number: $Contant_Person_Number, PoBox: $PoBox, Country: $Country, Registration_Number: $Registration_Number, Default_Price_List_Id: $Default_Price_List_Id, State: $State, Birth_Date: $Birth_Date, Credit_Period: $Credit_Period, ParentCompany: $ParentCompany, Fax: $Fax, creditAllowed: $creditAllowed, paymentTerms: $paymentTerms, Tax_Rate: $Tax_Rate, Type_Of_Supply: $Type_Of_Supply, Default_Tax_Ledger: $Default_Tax_Ledger, TRN: $TRN, DefaultRecord: $DefaultRecord, DbName: $DbName, crAmount: $crAmount, drAmount: $drAmount, amount: $amount)';
  }

  @override
  List<Object?> get props {
    return [
      LEDGER_ID,
      Ledger_Name,
      Ledger_Type,
      Group_Id,
      Opening_Balance,
      Opening_Balance_Date,
      Closing_Balance,
      Turn_Over,
      isIndividual,
      Narration,
      City,
      Address,
      Email,
      Phone_Number,
      Contact_Person_Name,
      Mobile_Number,
      Website,
      Contact_Person,
      Contant_Person_Number,
      PoBox,
      Country,
      Registration_Number,
      Default_Price_List_Id,
      State,
      Birth_Date,
      Credit_Period,
      ParentCompany,
      Fax,
      creditAllowed,
      paymentTerms,
      Tax_Rate,
      Type_Of_Supply,
      Default_Tax_Ledger,
      TRN,
      DefaultRecord,
      DbName,
      crAmount,
      drAmount,
      amount,
    ];
  }
}
