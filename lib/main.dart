import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/bloc/sync_ui_config_bloc.dart';
import 'package:formapp/home.dart';
import 'package:formapp/model/HiveModels/InventoryItems/InvetoryItemDataModel.dart';
import 'package:formapp/model/Ledgers/LedMasterHiveModel.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'constants.dart';

const primaryColor = Color.fromRGBO(32, 115, 152, 1);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter<LedgerMasterHiveModel>(LedgerMasterHiveModelAdapter());
  Hive.registerAdapter<InventoryItemHive>(InventoryItemHiveAdapter());
  // Box<InventoryItemHive> itemsbox =
  await Hive.openBox(HiveTagNames.Items_Hive_Tag);
  await Hive.openBox(HiveTagNames.Ledgers_Hive_Tag);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
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
        home: BlocProvider(
          lazy: false,
          create: (context) => SyncServiceBloc()..add(const FetchItemsEvent()),
          child: const HomePage(),
        ));
  }
}

class AddressBook {}
