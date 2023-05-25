import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Flexes(
            color: Colors.red,
            num: 1,
          ),
          Flexes(
            color: Colors.green,
            num: 2,
          ),
          Flexes(
            color: Colors.blue,
            num: 1,
          ),
        ],
      ),
    );
  }
}

class Flexes extends StatelessWidget {
  final Color color;
  final int num;

  const Flexes({
    super.key,
    required this.color,
    required this.num,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: num,
      child: Container(
        decoration: BoxDecoration(
          color: color,
        ),
      ),
    );
  }
}
