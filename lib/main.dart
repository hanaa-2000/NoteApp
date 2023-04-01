import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constant/constant.dart';
import 'package:note_app/cubits/cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/screens/home_page.dart';

void main() async{
 await Hive.initFlutter();
await  Hive.openBox(kNotesBox);

Hive.registerAdapter(NoteModelAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider(create:(context)=>AddNoteCubit() ),
      ],
     child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),

      home: Home_Page(),
    ),
    );
  }
}

