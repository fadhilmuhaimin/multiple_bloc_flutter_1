import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multiple_bloc_flutter_1/bloc/color_bloc.dart';
import 'package:multiple_bloc_flutter_1/bloc/counter_bloc.dart';
import 'package:multiple_bloc_flutter_1/ui/main_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ColorBloc()),
        BlocProvider(create: (context) => CounterBloc())    
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainPage()
      ),
    );
  }
}
