import 'package:flutter/material.dart';
import '../widgets/side_bar_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).primaryColorDark,
        title: const Text('Home'),
      ),
      drawer: const SideBarMenu(),
    );
  }
}


void main() {
  runApp( const MaterialApp(
    home: Scaffold(
      body: Center(
        child: HomeScreen(),
      ),
    ),
  ));
}
