import 'package:flutter/material.dart';
import 'package:get/get.dart';

String tasbeeh_name = "";
int _counter = 0;
int counting_value = 0;

String discription = "";

class TasbeehCounterScreen extends StatefulWidget {
  const TasbeehCounterScreen({Key? key}) : super(key: key);

  @override
  _TasbeehCounterScreenState createState() => _TasbeehCounterScreenState();
}

class _TasbeehCounterScreenState extends State<TasbeehCounterScreen> {
  increament() {
    setState(() {
      _counter = _counter + 1;
    });
  }

  decrement() {
    setState(() {
      _counter = _counter - 1;
    });
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Tasbeeh Counter"),
          backgroundColor: Colors.red.shade900,
          centerTitle: true,
        ),
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
                height: Get.height,
                width: Get.width,
                color: Colors.grey,
                child: Image.asset(
                  "assets/images/counter background.jpg",
                  fit: BoxFit.fill,
                )),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: Get.height * 0.03),
                    InkWell(
                      onTap: () {
                        _counter = 0;
                        setState(() {});
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: const CircleAvatar(
                          child: Icon(Icons.refresh_sharp),
                          radius: 23,
                          backgroundColor: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: Get.width * 0.25),
                          Text(
                            "$_counter",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 35,
                                color: Colors.lightGreenAccent),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Get.height * 0.18,
                      ),
                      InkWell(
                        onTap: () {
                          increament();
                        },
                        child: CircleAvatar(
                          radius: 75,
                          backgroundColor: Colors.lightGreenAccent,
                          child: CircleAvatar(
                            radius: 70,
                            backgroundColor: Colors.red.shade900,
                            child: Text(
                              "COUNTER",
                              style: TextStyle(
                                  fontSize: 25,
                                  color:
                                      Colors.lightGreenAccent.withOpacity(0.6)),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
