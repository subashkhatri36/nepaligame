import 'package:flutter/material.dart';
import 'package:nepaligame/features/bagchal/bagchal_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BagchalPage(),
    );
  }
}
