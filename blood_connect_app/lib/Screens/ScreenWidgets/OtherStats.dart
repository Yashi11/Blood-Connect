import 'package:flutter/material.dart';

class OtherStats extends StatefulWidget {
  const OtherStats({super.key});

  @override
  State<OtherStats> createState() => _OtherStatsState();
}

class _OtherStatsState extends State<OtherStats> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("We will be releasing this feature soon!"),
    );
  }
}
