import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'blackjack_state.dart';

class BlackjackCubit extends Cubit<BlackjackState> {
  BlackjackCubit() : super(InitialBlackjackState());

  void setHands({Card? dealer, List<Card> player = const []}) => emit(
        SetHandsBlackjackState(dealer, player),
      );
}
