import 'package:flutter/material.dart';
import 'package:gin_finance_test/ui/widgets/custom_textfield.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/homepage';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome to',
            ),
            Text('GIN Finance'),
            Text('Welcome to The Bank of The Future. '
                ''
                'Manage and Track your accounts on the go.'),
          ],
        ),
      ),
    );
  }
}

class EmailCheck extends StatefulWidget {
  EmailCheck({Key? key}) : super(key: key);

  @override
  _EmailCheckState createState() => _EmailCheckState();
}

class _EmailCheckState extends State<EmailCheck> {
  TextEditingController _email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          CustomTextField(
            hintText: 'Email',
            actionType: TextInputType.emailAddress,
            onSubmitField: () => print('aaa'),
            onChange: () => print('ddd'),
            controller: _email,
          ),
        ],
      ),
    );
  }
}
