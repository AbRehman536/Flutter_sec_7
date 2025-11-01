import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimePicker extends StatefulWidget {
  const DateTimePicker({super.key});

  @override
  State<DateTimePicker> createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Time Picker"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(children: [
        Text(
          DateFormat.yMMMMEEEEd().format(selectedDate),
          style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900),
        ),
          ElevatedButton(onPressed: (){
            showDatePicker(
                context: context,
                firstDate: DateTime(1970),
                lastDate: DateTime.now()).then((val){
                  setState(() {
                    selectedDate = val!;
                  });
            });
          }, child: Text("Show Date Picker")),

        Text(
          selectedTime.format(context).toString(),
          style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30),
        ),
        ElevatedButton(onPressed: (){
          showTimePicker(
              context: context,
              initialTime: TimeOfDay.now()).then((val){
                setState(() {
                  selectedTime = val!;
                });
          });
        }, child: Text("Show Time Picker"))
      ],),
    );
  }
}
