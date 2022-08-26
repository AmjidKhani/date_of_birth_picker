import 'package:datepickerintextfield/resuabledatetimepicker/datepicker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class datepickers extends StatefulWidget {
  const datepickers({Key? key}) : super(key: key);

  @override
  State<datepickers> createState() => _datepickerState();
}
TextEditingController datecontroller=TextEditingController();
class _datepickerState extends State<datepickers> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:
      Center(
        child: Container(
          padding: EdgeInsets.only(top: 120),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
        Expanded(child: datepicker( datecontroller)),
        ],
        )
        ),
      )
    );
  }
}
