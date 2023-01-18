import 'package:blackjack_sensei/blackjack/cubit/blackjack_cubit.dart';
import 'package:blackjack_sensei/blackjack/model/card.dart';
import 'package:blackjack_sensei/utilities/asset_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DealerHand extends StatelessWidget {
  const DealerHand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bjCubit = BlackjackCubit.get(context);
    return BlocBuilder<BlackjackCubit, BlackjackState>(
        builder: (context, state) {
      return InkWell(
        child: Image.asset(AssetPaths.getCardAsset(CardName.king)),
      );
    });
  }
}
