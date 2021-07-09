import 'package:flutter/material.dart';

class CreatePasswordScreen extends StatefulWidget {
  CreatePasswordScreen({Key? key}) : super(key: key);

  @override
  _CreatePasswordScreenState createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Account'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Create Password',
            ),
            Text(
              'Password will be used to login to account',
            ),
            //textformfield
            Text('Complexity'),
            //Row for uppercase, lowecase, number, characters
            //TODO: make algoritm check if all required passed
          ],
        ),
      ),
    );
  }
}
