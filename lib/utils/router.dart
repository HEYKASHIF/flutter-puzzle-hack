import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:roll_the_ball/screens/puzzle/blocs/ball/ball_bloc.dart';
import 'package:roll_the_ball/screens/puzzle/blocs/puzzle/puzzle_bloc.dart';
import 'package:roll_the_ball/screens/puzzle/puzzle_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => PuzzleBloc(),
              ),
              BlocProvider(
                create: (context) => BallBloc(),
              ),
            ],
            child: const PuzzleScreen(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => PuzzleBloc(),
              ),
              BlocProvider(
                create: (context) => BallBloc(),
              ),
            ],
            child: const PuzzleScreen(),
          ),
        );
    }
  }
}
