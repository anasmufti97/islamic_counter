import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AyatUlQursi extends StatefulWidget {
  const AyatUlQursi({Key? key}) : super(key: key);

  @override
  State<AyatUlQursi> createState() => _AyatUlQursiState();
}

class _AyatUlQursiState extends State<AyatUlQursi> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Ayat Ul Kursi"),
            backgroundColor: Colors.red.shade900,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                      child: Text(
                    "اللَّهُ لَا إِلَٰهَ إِلَّا هُوَ الْحَيُّ الْقَيُّومُ ۚ لَا تَأْخُذُهُ سِنَةٌ وَلَا نَوْمٌ ۚ لَهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الْأَرْضِ ۗ مَنْ ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلَّا بِإِذْنِهِ ۚ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ ۖ وَلَا يُحِيطُونَ بِشَيْءٍ مِنْ عِلْمِهِ إِلَّا بِمَا شَاءَ ۚ وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالْأَرْضَ ۖ وَلَا يَئُودُهُ حِفْظُهُمَا ۚ وَهُوَ الْعَلِيُّ الْعَظِيمُ",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: Get.height * 0.03),
                  )),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 2,
                      width: Get.width,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                      child: Text(
                    "اللہ وہ ہے جس کے سوا کوئی معبود نہیں، وہ زندہ ہے، قائم رب العالمین ہے، جسے کوئی نہ سو سکتا ہے نہ نیند آ سکتی ہے، آسمانوں اور زمین میں جو کچھ ہے سب اسی کا ہے، جس کا اجازت کے بغیر کوئی نہیں جو اس کے سامنے اپنے دوستوں کی شفاعت کر سکے، وہ ان سب کے حالات سے بخبر ہے جو ان کے سامنے ہوں گے اور جو ان کے پیچھے ہوں گے، اور وہ ان کے علم کی کوئی حد بھی نہیں، مگر جو وہ چاہے۔ اس کا کرسی اور آسمانوں اور زمین کو جھلکتا ہے، ان کو دونوں کی حفاظت کرنے میں تھکتا نہیں، اور وہ بہت عالی و بزرگ ہے۔",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: Get.height * 0.02),
                  )),
                ],
              ),
            ),
          )),
    );
  }
}
