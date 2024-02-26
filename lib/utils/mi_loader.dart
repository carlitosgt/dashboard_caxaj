import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class MiLoaderPage extends StatelessWidget {
  const MiLoaderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SpinKitWaveSpinner(
        color: Colors.redAccent,
        size: 100,
      ),
    );
  }
}
