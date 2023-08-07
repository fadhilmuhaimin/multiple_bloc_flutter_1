import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum Colorevent { toPink, toAmber, toPurple }

class ColorBloc extends Bloc<Colorevent, Color> {
  ColorBloc() : super(Colors.pink) {
    on<Colorevent>((event, emit) {
      emit((event == Colorevent.toPink)
          ? Colors.pink
          : (event == Colorevent.toAmber)
              ? Colors.amber
              : Colors.purple);
    });
  }
}
