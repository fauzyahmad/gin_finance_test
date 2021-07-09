import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScheduleVideo extends StatefulWidget {
  ScheduleVideo({Key? key}) : super(key: key);

  @override
  _ScheduleVideoState createState() => _ScheduleVideoState();
}

class _ScheduleVideoState extends State<ScheduleVideo> {
  DateTime _selectedDate = DateTime.now();
  TextEditingController _birthdate = TextEditingController();

  void _selectedDateBuildAndro(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(1945),
      lastDate: DateTime(DateTime.now().year + 1),
      helpText: 'Pilih Tanggal Lahir',
      cancelText: 'Batal',
      confirmText: 'Pilih',
      // initialDatePickerMode: DatePickerMode.year,
      initialEntryMode: DatePickerEntryMode.calendar,
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        // _birthdate =
        //     TextEditingController(text: Constants.formatDate.format(picked));
      });
    }
  }

  void _selectedDateBuildIOS(BuildContext context) async {
    showCupertinoModalPopup(
      context: context,
      builder: (_) => Container(
        height: 500,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: 400,
              child: CupertinoDatePicker(
                  initialDateTime: DateTime.now(),
                  onDateTimeChanged: (val) {
                    setState(() {
                      // _chosenDateTime = val;
                    });
                  }),
            ),

            // Close the modal
            CupertinoButton(
              child: Text('OK'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        ),
      ),
    );
  }

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
