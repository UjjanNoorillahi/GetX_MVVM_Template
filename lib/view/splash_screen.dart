import 'package:flutter/material.dart';
import 'package:getx_mvvm/data/app_exceptions.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircularProgressIndicator(),
            SizedBox(height: 20),
            Text('Loading...'),

          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {

          throw InternetException('Internet Error');
          // Add your onPressed code here!
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
