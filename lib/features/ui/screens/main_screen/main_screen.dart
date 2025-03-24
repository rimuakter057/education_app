import 'package:education_app/features/ui/screens/main_screen/widget/drawer/my_drawer.dart';
import 'package:flutter/material.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: MyDrawer(),
    );
  }
}
