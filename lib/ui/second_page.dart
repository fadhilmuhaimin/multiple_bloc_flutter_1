
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multiple_bloc_flutter_1/bloc/color_bloc.dart';
import 'package:multiple_bloc_flutter_1/bloc/counter_bloc.dart';
import 'package:multiple_bloc_flutter_1/ui/draft_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  

  @override
  Widget build(BuildContext context) {
    ColorBloc colorBloc = BlocProvider.of<ColorBloc>(context);
    CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);

    return BlocBuilder<ColorBloc, Color>(
      builder: (context, color) => DraftPage(
        backgroundColor: color,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<CounterBloc, int>(
                builder: (context, number) => GestureDetector(
                  onTap: () => counterBloc.add(number + 1),
                  child: Text(
                    number.toString(),
                    style: const TextStyle(
                        fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        colorBloc.add(Colorevent.toPink);
                      },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.pink),
                          shape: MaterialStateProperty.all( CircleBorder(
                              side: (color == Colors.pink) ?
                                  const BorderSide(color: Colors.black, width: 3)
                                  : const BorderSide()
                                  ),),),
                      child: Container()),
                  ElevatedButton(
                      onPressed: () {
                        colorBloc.add(Colorevent.toAmber);
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.amber),
                          shape: MaterialStateProperty.all( CircleBorder(
                              side: (color == Colors.amber) ?
                                  const BorderSide(color: Colors.black, width: 3)
                                  : const BorderSide()
                                  ),),),
                      child: Container()),
                  ElevatedButton(
                      onPressed: () {
                         colorBloc.add(Colorevent.toPurple);
                      },
                      style:   ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.purple),
                          shape: MaterialStateProperty.all( CircleBorder(
                              side: (color == Colors.purple) ?
                                  const BorderSide(color: Colors.black, width: 3)
                                  : const BorderSide()
                                  ),),),
                      child: Container()),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
