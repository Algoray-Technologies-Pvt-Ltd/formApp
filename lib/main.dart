import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/home.dart';
import 'package:formapp/model/Employee/EmployeeHiveModel.dart';
import 'package:formapp/model/HiveModels/InventoryItems/InvetoryItemDataModel.dart';
import 'package:formapp/model/Ledgers/LedMasterHiveModel.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'bloc/sync_ui_config_bloc.dart';
import 'constants.dart';
import 'model/HiveModels/PriceList/PriceListEntriesHive.dart';
import 'model/HiveModels/UOM/UOMHiveModel.dart';

const primaryColor = Color.fromRGBO(32, 115, 152, 1);
String hivekey = 'formApp';




void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter<EmployeeHiveModel>(EmployeeHiveModelAdapter());
  Hive.registerAdapter<LedgerMasterHiveModel>(LedgerMasterHiveModelAdapter());
  Hive.registerAdapter<InventoryItemHive>(InventoryItemHiveAdapter());
  Hive.registerAdapter<UOMHiveMOdel>(UOMHiveMOdelAdapter());
  Hive.registerAdapter<PriceListEntriesHive>(PriceListEntriesHiveAdapter());

  await Hive.openBox<LedgerMasterHiveModel>(HiveTagNames.Ledgers_Hive_Tag);
  await Hive.openBox<InventoryItemHive>(HiveTagNames.Items_Hive_Tag);
  await Hive.openBox<EmployeeHiveModel>(HiveTagNames.Employee_Hive_Tag);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    print('naguleee');
    return MaterialApp(
        theme: ThemeData(
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(10),
                backgroundColor: const Color.fromRGBO(32, 115, 152, 1),
                minimumSize: const Size(100, 35),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
            appBarTheme: AppBarTheme(
              backgroundColor:
                  const Color.fromRGBO(32, 115, 152, 1).withOpacity(.7),
              elevation: 0,
              iconTheme: const IconThemeData(color: Colors.white),
              titleTextStyle: const TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            inputDecorationTheme: const InputDecorationTheme(
              filled: true,
              hintStyle: TextStyle(color: Color.fromARGB(255, 97, 96, 96)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
            )),
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: MultiBlocProvider(
          providers: [
            BlocProvider(
              lazy: false,
              create: (context) {
                print("hery ladee");
                return SyncServiceBloc()
                  ..add(const FetchLedgersEvent())
                  ..add(const FetchEmployeesEvent())
                  ..add(const FetchItemsEvent());
              },
            ),
          ],
          child: const HomePage(),
        ));
  }
}

class AddressBook {}
