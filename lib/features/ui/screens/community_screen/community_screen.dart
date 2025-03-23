import 'package:flutter/material.dart';

class CommunityVideosScreen extends StatefulWidget {
  const CommunityVideosScreen({super.key});

  @override
  State<CommunityVideosScreen> createState() => _CommunityVideosScreenState();
}

class _CommunityVideosScreenState extends State<CommunityVideosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("com videos")),
    );
  }
}
