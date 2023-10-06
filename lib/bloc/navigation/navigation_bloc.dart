import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(StateA()) {
    on<EventA>((event, emit) => emit(StateA()));
    on<EventB>((event, emit) => emit(StateB()));
    on<EventC>((event, emit) => emit(StateC()));
  }
}
