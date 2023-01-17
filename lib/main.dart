import 'package:blackjack_sensei/blackjack/cubit/blackjack_cubit.dart';
import 'package:blackjack_sensei/blackjack/view/blackjack_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    BlocProvider(
      create: ((context) => BlackjackCubit()),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BlackjackPage(),
    );
  }
}
