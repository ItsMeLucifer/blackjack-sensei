part of 'blackjack_cubit.dart';

@immutable
abstract class BlackjackState extends Equatable {
  const BlackjackState();
  @override
  List<Object> get props => [];
}

class InitialBlackjackState extends BlackjackState {}

class SetHandsBlackjackState extends BlackjackState {
  final Card? dealerCard;
  final List<Card> player;
  const SetHandsBlackjackState(this.dealerCard, this.player);
}
