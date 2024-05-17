import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islamic_counter/allah_names.dart';
import 'package:islamic_counter/ayatulkursiScreen.dart';
import 'package:islamic_counter/month_list.dart';
import 'package:islamic_counter/tasbeeh_screen.dart';
import 'package:islamic_counter/zakat_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Quran App"),
          titleTextStyle: TextStyle(color: Colors.white),
          centerTitle: true,
          backgroundColor: Colors.red.shade900,
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.settings, size: 25, color: Colors.white),
            ), // InkWell(
            //   onTap: () {
            //     Get.to(LanguageChangeScreen());
            //   },
            //   child: Padding(
            //     padding: EdgeInsets.symmetric(horizontal: 10.0),
            //     child: Icon(
            //       Icons.language_outlined,
            //       size: 25,
            //     ),
            //   ),
            // ),
          ],
        ),
        drawer: SizedBox(
          width: Get.width * 0.7,
          child: Drawer(
            child: Container(
              color: Colors.grey.shade300,
              child: Column(
                children: [
                  Container(
                    height: 57,
                    color: Colors.red.shade900,
                    width: Get.width,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Align(
                              alignment: Alignment.centerLeft,
                              child: Icon(
                                Icons.arrow_back_ios_outlined,
                              ))),
                    ),
                  ),
                  // drawerRow(
                  //     drawerText: "Instruction",
                  //     drawerIcon: Icons.integration_instructions_outlined),
                  // drawerRow(
                  //     drawerText: "Feed back", drawerIcon: Icons.feedback),
                  // drawerRow(
                  //     drawerText: "About Us",
                  //     drawerIcon: Icons.messenger_outline),
                  // drawerRow(
                  //     drawerText: "Rate App",
                  //     drawerIcon: Icons.star_rate_outlined),
                  // drawerRow(drawerText: "Share App", drawerIcon: Icons.share),
                  // drawerRow(
                  //     drawerText: "More Apps",
                  //     drawerIcon: Icons.more_horiz_outlined),

                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text(
                      "اگر آپ اس ایپ سے فائدہ اٹھا رہے ہیں تو ہمارے لیے بھی دعا کریں۔",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text(
                      "if this app is helpful to you then pray for Us also",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 17),
                    ),
                  ),

                  SizedBox(
                    height: Get.height * 0.2,
                  ),

                  InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: drawerRow(
                          drawerText: "Exit", drawerIcon: Icons.exit_to_app)),
                ],
              ),
            ),
          ),
        ),
        body: Stack(
          children: [
            Container(
              height: Get.height,
              color: Colors.grey,
              width: Get.width,
              child: Image.asset(
                "assets/images/backgroundImage.jpg",
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                        onTap: () {
                          Get.to(const ListOfMonthScreen());
                        },
                        child: scrollContainer("Months Names")),
                    InkWell(
                        onTap: () {
                          Get.to(const AllahNamesScreen());
                        },
                        child: scrollContainer("Allah Names")),
                    InkWell(
                        onTap: () {
                          Get.to(const ZakatScreen());
                        },
                        child: scrollContainer("Zakat")),
                    InkWell(
                        onTap: () {
                          Get.to(const AyatUlQursi());
                        },
                        child: scrollContainer("Ayat-ul-Kursi")),
                    InkWell(
                        onTap: () {
                          Get.to(const TasbeehCounterScreen());
                        },
                        child: scrollContainer("Tasbeeh Counter")),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget scrollContainer(String scrollContainerText) {
  return Padding(
      padding: const EdgeInsets.only(top: 13.0),
      child: Container(
        height: 50,
        width: Get.width * 0.8,
        color: Colors.red.withOpacity(0.4),
        child: Center(
            child: Text(
          scrollContainerText,
          style: const TextStyle(color: Colors.white),
        )),
      ));
}

Widget drawerRow(
    {String drawerText = "Feed Back", IconData drawerIcon = Icons.feedback}) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            drawerText,
            style: const TextStyle(color: Colors.green, fontSize: 16),
          ),
          Icon(
            drawerIcon,
            color: Colors.green,
            size: 24,
          ),
        ],
      ),
    ),
  );
}

/*
Container(
child: Column(
children: [
Center(
child: Container(
width: 190,
color: Colors.grey,
child: Column(
children: [
Text(DateFormat('MMMM  dd,yyyy   EEEE').format(DateTime.now())),
Text(DateFormat('KK:mm a').format(DateTime.now())),
],
),

),
),
],
),
),
*/
