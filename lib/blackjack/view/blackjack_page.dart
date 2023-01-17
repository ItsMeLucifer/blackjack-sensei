import 'package:blackjack_sensei/blackjack/cubit/blackjack_cubit.dart';
import 'package:blackjack_sensei/blackjack/view/dealer_hand_view.dart';
import 'package:blackjack_sensei/blackjack/view/player_hand_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlackjackPage extends StatefulWidget {
  const BlackjackPage({Key? key}) : super(key: key);

  @override
  State<BlackjackPage> createState() => _BlackjackPageState();
}

class _BlackjackPageState extends State<BlackjackPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final bjCubit = context.read<BlackjackCubit>();
      bjCubit.setHands();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<BlackjackCubit, BlackjackState>(
        builder: (context, state) {
          if (state is InitialBlackjackState) {
            return const CircularProgressIndicator();
          }
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 40.0),
              child: Column(
                children: const [
                  DealerHand(),
                  Expanded(child: SizedBox()),
                  PlayerHand(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
