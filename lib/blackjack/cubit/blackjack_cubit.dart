import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'blackjack_state.dart';

class BlackjackCubit extends Cubit<BlackjackState> {
  BlackjackCubit() : super(InitialBlackjackState());

  static BlackjackCubit get(BuildContext context) => BlocProvider.of(context);

  Card? dealerHand;
  List<Card> playerHand = [];

  void setDealerHand(Card card) {
    dealerHand = card;
    emit(SetDealerHandBlackjackState());
  }

  void setPlayerHand(List<Card> cards) {
    playerHand = cards;
    emit(SetPlayerHandBlackjackState());
  }

  void addCardToPlayerHand(Card card) {
    playerHand.add(card);
    emit(AddCardToPlayerHandBlackjackState());
  }
}
