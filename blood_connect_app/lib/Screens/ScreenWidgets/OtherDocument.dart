import 'package:flutter/material.dart';

class OtherDocument extends StatefulWidget {
  const OtherDocument({super.key});

  @override
  State<OtherDocument> createState() => _OtherDocumentState();
}

class _OtherDocumentState extends State<OtherDocument> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("We will be releasing this feature soon!"),
    );
  }
}
