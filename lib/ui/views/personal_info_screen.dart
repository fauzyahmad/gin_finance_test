import 'package:flutter/material.dart';

class PersonalInfoScreen extends StatefulWidget {
  PersonalInfoScreen({Key? key}) : super(key: key);

  @override
  _PersonalInfoScreenState createState() => _PersonalInfoScreenState();
}

class _PersonalInfoScreenState extends State<PersonalInfoScreen> {
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
            Text('Personal Information'),
            Text(
              'Please fill in the information below and '
              ''
              'and your goal for digital saving',
            ),
            //textformfield 3 buah pakai native
          ],
        ),
      ),
    );
  }
}
