class AllLedgers {
  List<Data>? data;

  AllLedgers({this.data});

  AllLedgers.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? ledgerId;
  String? ledgerName;
  String? groupId;
  String? ledgerGroupName;
  String? dbName;
  String? city;
  String? address;
  String? tRN;
  String? phoneNumber;
  String? defaultPriceListId;
  String? lastModified;
  String? creditLimit;
  String? defaultSalesman;

  Data(
      {this.ledgerId,
      this.ledgerName,
      this.groupId,
      this.ledgerGroupName,
      this.dbName,
      this.city,
      this.address,
      this.tRN,
      this.phoneNumber,
      this.defaultPriceListId,
      this.lastModified,
      this.creditLimit,
      this.defaultSalesman});

  Data.fromJson(Map<String, dynamic> json) {
    ledgerId = json['Ledger_Id'];
    ledgerName = json['Ledger_Name'];
    groupId = json['Group_Id'];
    ledgerGroupName = json['Ledger_Group_Name'];
    dbName = json['DbName'];
    city = json['City'];
    address = json['Address'];
    tRN = json['TRN'];
    phoneNumber = json['Phone_Number'];
    defaultPriceListId = json['Default_Price_List_Id'];
    lastModified = json['Last_Modified'];
    creditLimit = json['Credit_Limit'];
    defaultSalesman = json['Default_Salesman'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Ledger_Id'] = this.ledgerId;
    data['Ledger_Name'] = this.ledgerName;
    data['Group_Id'] = this.groupId;
    data['Ledger_Group_Name'] = this.ledgerGroupName;
    data['DbName'] = this.dbName;
    data['City'] = this.city;
    data['Address'] = this.address;
    data['TRN'] = this.tRN;
    data['Phone_Number'] = this.phoneNumber;
    data['Default_Price_List_Id'] = this.defaultPriceListId;
    data['Last_Modified'] = this.lastModified;
    data['Credit_Limit'] = this.creditLimit;
    data['Default_Salesman'] = this.defaultSalesman;
    return data;
  }
}
