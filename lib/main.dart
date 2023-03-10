import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formapp/home.dart';
import 'package:formapp/model/Ledgers/LedMasterHiveModel.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'bloc/sync_ui_config_bloc.dart';

const primaryColor = Color.fromRGBO(32, 115, 152, 1);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter<LedgerMasterHiveModel>(LedgerMasterHiveModelAdapter());
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
                padding: EdgeInsets.all(10),
                backgroundColor: Color.fromRGBO(32, 115, 152, 1),
                minimumSize: const Size(100, 35),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
            appBarTheme: AppBarTheme(
              backgroundColor: Color.fromRGBO(32, 115, 152, 1).withOpacity(.7),
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.white),
              titleTextStyle: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            inputDecorationTheme: InputDecorationTheme(
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
          create: (context) => SyncServiceBloc()..add(FetchLedgersEvent()),
          child: HomePage(),
        ));
  }
}

class AddressBook {}
