import 'package:flutter/material.dart';
import 'package:gin_finance_test/ui/widgets/custom_textfield.dart';

class CreatePasswordScreen extends StatefulWidget {
  CreatePasswordScreen({Key? key}) : super(key: key);

  @override
  _CreatePasswordScreenState createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
  TextEditingController _password = TextEditingController();
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
            CustomTextField(
              hintText: 'Create Password',
              obscureText: true,
              onSubmitField: () => print('aa'),
              onChange: () => print('qwe'),
              controller: _password,
              prefixIcon: Icon(Icons.remove_red_eye),
            ),
            Text('Complexity'),
            //Row for uppercase, lowecase, number, characters
            //TODO: make algoritm check if all required passed
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('a'),
                      Text('Lowercase'),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('A'),
                      Text('Uppercase'),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('123'),
                      Text('Number'),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('9+'),
                      Text('Characters'),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
