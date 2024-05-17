import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListOfMonthScreen extends StatefulWidget {
  const ListOfMonthScreen({Key? key}) : super(key: key);

  @override
  _ListOfMonthScreenState createState() => _ListOfMonthScreenState();
}

class _ListOfMonthScreenState extends State<ListOfMonthScreen> {
  List<String> islamicMonthslist = [
    "Muharram",
    "Safar",
    "Rabi al-Awwal",
    "Rabi al-Thani",
    "Jumada al-Awwal",
    "Jumada al-Thani",
    "Rajab",
    "Shaban",
    "Ramadan",
    "Shawwal",
    "Dhu al-Qadah",
    "Dhu al-Hijjah "
  ];
  List<String> englishMonthslist = [
    "January",
    "Februry",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];
  int islamicMonths = 0;
  int englishMonths = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text("Months Names"),
              backgroundColor: Colors.red.shade900,
            ),
            body: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Islamic",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w600),
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: islamicMonthslist.length,
                        itemBuilder: (BuildContext context, index) => Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text("${index + 1}_"),
                            ),
                            Text(
                              islamicMonthslist[index],
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: Get.height,
                  width: 2,
                  color: Colors.grey,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Gregorian",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w600),
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: englishMonthslist.length,
                        itemBuilder: (BuildContext context, index) => Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text("${index + 1}_"),
                            ),
                            Text(
                              englishMonthslist[index],
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }
}
