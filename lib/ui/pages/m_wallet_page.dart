import 'package:flutter/material.dart';
import 'package:learn_app_plane/ui/widget/balance_card.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PurpleCard(),
      ),
    );
  }
}
