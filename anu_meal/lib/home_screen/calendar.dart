import 'package:flutter/material.dart';
import 'package:flutter_calendar_week/flutter_calendar_week.dart';
import 'package:intl/intl.dart';

class SubCalendar extends StatefulWidget {
  const SubCalendar({Key? key}) : super(key: key);

  @override
  _SubCalendarState createState() => _SubCalendarState();
}

class _SubCalendarState extends State<SubCalendar> {
  var selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            CalendarWeek(
              controller: CalendarWeekController(),
              height: 100,
              showMonth: true,
              minDate: selectedDate.add(
                const Duration(days: -4),
              ),
              maxDate: selectedDate.add(
                const Duration(days: 4),
              ),
              onDatePressed: (DateTime datetime) {
                // Do something
              },
              onDateLongPressed: (DateTime datetime) {
                // Do something
              },
              onWeekChanged: () {
                // Do something
              },
              monthViewBuilder: (DateTime time) => Align(
                alignment: FractionalOffset.center,
                child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    child: Text(
                      DateFormat.yMMMM().format(time),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w600),
                    )),
              ),
              decorations: [
                DecorationItem(
                    decorationAlignment: FractionalOffset.bottomRight,
                    date: DateTime.now(),
                    decoration: const Icon(
                      Icons.today,
                      color: Colors.blue,
                    )),
                DecorationItem(
                    date: DateTime.now().add(const Duration(days: 1)),
                    decoration: const Text(
                      'Holiday',
                      style: TextStyle(
                        color: Colors.brown,
                        fontWeight: FontWeight.w600,
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            /* 
            아래의 Text를 위의 날짜 선택으로부터 공백을 주기 위한 SizedBox
            */
            const Text(
              "Test Calendar Font for ANU MEAL",
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
