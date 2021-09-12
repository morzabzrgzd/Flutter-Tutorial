import 'package:flutter/material.dart';

class SnakBarScreen extends StatelessWidget {
  const SnakBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar'),
      ),
      body: SafeArea(
          child: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Join Flutter'),
                duration: Duration(seconds: 2),
                elevation: 10,
                behavior: SnackBarBehavior.floating,
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 30,
                ),
                margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              ),
            );
          },
          child: const Text(
            'Show SnakBar',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      )),
    );
  }
}
