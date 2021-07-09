import 'package:flutter/material.dart';

class ScheduleVideo extends StatefulWidget {
  ScheduleVideo({Key? key}) : super(key: key);

  @override
  _ScheduleVideoState createState() => _ScheduleVideoState();
}

class _ScheduleVideoState extends State<ScheduleVideo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create Account',
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //icon calendar with grow and shrink animation,
            Text(
              'Schedule Video Call',
            ),
            Text('Choose the date and time that you preferred '
                ''
                'We will send a link via email to make a video '
                ''
                'call on the scheduled date and time.'),
            //make date and time picker native based on android and ios
          ],
        ),
      ),
    );
  }
}
