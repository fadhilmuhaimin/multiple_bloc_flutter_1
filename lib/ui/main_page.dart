import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multiple_bloc_flutter_1/bloc/color_bloc.dart';
import 'package:multiple_bloc_flutter_1/bloc/counter_bloc.dart';
import 'package:multiple_bloc_flutter_1/ui/draft_page.dart';
import 'package:multiple_bloc_flutter_1/ui/second_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorBloc, Color>(
      builder: (context, color) => DraftPage(
        backgroundColor: color,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<CounterBloc, int>(
                builder: (context, number) =>  Text(
                  number.toString(),
                  style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SecondPage()));
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(color),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ))),
                child: const Text(
                  "Click to Change",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
