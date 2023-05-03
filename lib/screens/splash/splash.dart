import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});
  static const String routeName = '/';
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
