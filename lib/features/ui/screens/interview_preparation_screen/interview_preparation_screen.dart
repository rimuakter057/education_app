import 'package:flutter/material.dart';

class InterviewPreparationScreen extends StatefulWidget {
  const InterviewPreparationScreen({super.key});

  @override
  State<InterviewPreparationScreen> createState() => _InterviewPreparationScreenState();
}

class _InterviewPreparationScreenState extends State<InterviewPreparationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("interview preparation")),
    );
  }
}
