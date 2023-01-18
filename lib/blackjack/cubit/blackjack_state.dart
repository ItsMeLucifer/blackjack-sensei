part of 'blackjack_cubit.dart';

@immutable
abstract class BlackjackState extends Equatable {
  const BlackjackState();
  @override
  List<Object> get props => [];
}

class InitialBlackjackState extends BlackjackState {}

class SetDealerHandBlackjackState extends BlackjackState {}

class SetPlayerHandBlackjackState extends BlackjackState {}

class AddCardToPlayerHandBlackjackState extends BlackjackState {}
