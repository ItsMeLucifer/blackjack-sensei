import 'package:blackjack_sensei/blackjack/model/card.dart';

class AssetPaths {
  static const String assetsPath = 'assets/images';

  static String getCardAsset(CardName name,
      {bool blackStyle = true, String color = 'diamond'}) {
    final String cardPath = "cards/${blackStyle ? 'black' : 'white'}/$color";
    switch (name) {
      case CardName.ace:
        return "$assetsPath/$cardPath/A.png";
      case CardName.two:
        return "$assetsPath/$cardPath/2.png";
      case CardName.three:
        return "$assetsPath/$cardPath/3.png";
      case CardName.four:
        return "$assetsPath/$cardPath/4.png";
      case CardName.five:
        return "$assetsPath/$cardPath/5.png";
      case CardName.six:
        return "$assetsPath/$cardPath/6.png";
      case CardName.seven:
        return "$assetsPath/$cardPath/7.png";
      case CardName.eight:
        return "$assetsPath/$cardPath/8.png";
      case CardName.nine:
        return "$assetsPath/$cardPath/9.png";
      case CardName.ten:
        return "$assetsPath/$cardPath/10.png";
      case CardName.jack:
        return "$assetsPath/$cardPath/J.png";
      case CardName.queen:
        return "$assetsPath/$cardPath/Q.png";
      case CardName.king:
        return "$assetsPath/$cardPath/K.png";
    }
  }
}
