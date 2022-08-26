import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../datepicker.dart';

class datepicker extends StatefulWidget {
  const datepicker(TextEditingController datecontroller, {Key? key}) : super(key: key);

  @override
  State<datepicker> createState() => _datepickerState();
}

class _datepickerState extends State<datepicker> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15.0,
        right: 15.0,
      ),
      child: SingleChildScrollView(
        child: TextFormField(
          controller: datecontroller,
          keyboardType: TextInputType.text,
          style: TextStyle(fontSize: 20, color: Colors.blue),
          decoration: InputDecoration(
            // labelText:labelText,
            hintText:"Select Date_Of_Birth ",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
          onTap: ()async{
            DateTime? pickeddate=await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2198));
            if(pickeddate!=null){
              setState(() {
                datecontroller.text=DateFormat("yyyy-MM-dd").format(pickeddate);
              });
            }
          },
          validator: (value) {},
        ),
      ),
    );
  }
}
