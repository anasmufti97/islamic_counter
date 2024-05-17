import 'package:flutter/material.dart';

class ZakatScreen extends StatefulWidget {
  const ZakatScreen({Key? key}) : super(key: key);

  @override
  _ZakatScreenState createState() => _ZakatScreenState();
}

class _ZakatScreenState extends State<ZakatScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.red.shade900,
              title: Text("Z A K A T"),
              centerTitle: true,
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  ///introduction///

                  listTileofPillars(
                      "Introduction",
                      "his is tile number 1 Trailing expansion arrow icon Trailing"
                          ' expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow ic'
                          'on Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon'
                          ' Trailing expansion arrow icon Trailing expan',
                      "وہ چیزیں جو نماز کو باطل کرتی ہیں وہ چیزیں جو نماز کو باطل کرتی ہیں"),
                  singleHeightContainer(),

                  ///Wealth on which zakat is Obligatory///

                  listTileofPillars(
                      "Wealth on which zakat is Obligatory",
                      "his is tile number 1 Trailing expansion arrow icon Trailing"
                          ' expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow ic'
                          'on Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon'
                          ' Trailing expansion arrow icon Trailing expan',
                      "وہ چیزیں جو نماز کو باطل کرتی ہیں وہ چیزیں جو نماز کو باطل کرتی ہیں"),
                  singleHeightContainer(),

                  ///Kinds of Wealth///
                  listTileofPillars(
                      "Kinds of Wealth",
                      "his is tile number 1 Trailing expansion arrow icon Trailing"
                          ' expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow ic'
                          'on Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon'
                          ' Trailing expansion arrow icon Trailing expan',
                      "وہ چیزیں جو نماز کو باطل کرتی ہیں وہ چیزیں جو نماز کو باطل کرتی ہیں"),
                  singleHeightContainer(),

                  ///Zakat Distribution///
                  listTileofPillars(
                      "Zakat Distribution",
                      "his is tile number 1 Trailing expansion arrow icon Trailing"
                          ' expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow ic'
                          'on Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon'
                          ' Trailing expansion arrow icon Trailing expan',
                      "وہ چیزیں جو نماز کو باطل کرتی ہیں وہ چیزیں جو نماز کو باطل کرتی ہیں"),
                  singleHeightContainer(),

                  ///Wealth which not applicable for zakaat///
                  listTileofPillars(
                      "Wealth which not applicable for zakaat",
                      "his is tile number 1 Trailing expansion arrow icon Trailing"
                          ' expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow ic'
                          'on Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon'
                          ' Trailing expansion arrow icon Trailing expan',
                      "وہ چیزیں جو نماز کو باطل کرتی ہیں وہ چیزیں جو نماز کو باطل کرتی ہیں"),
                  singleHeightContainer(),

                  ///Zakaat Recipient///
                  listTileofPillars(
                      "Zakaat Recipient",
                      "his is tile number 1 Trailing expansion arrow icon Trailing"
                          ' expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow ic'
                          'on Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon'
                          ' Trailing expansion arrow icon Trailing expan',
                      "وہ چیزیں جو نماز کو باطل کرتی ہیں وہ چیزیں جو نماز کو باطل کرتی ہیں"),
                  singleHeightContainer(),

                  ///Person who can not be given zakaa///
                  listTileofPillars(
                      "Person who can not be given zakaa",
                      "his is tile number 1 Trailing expansion arrow icon Trailing"
                          ' expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow ic'
                          'on Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon'
                          ' Trailing expansion arrow icon Trailing expan',
                      "وہ چیزیں جو نماز کو باطل کرتی ہیں وہ چیزیں جو نماز کو باطل کرتی ہیں"),
                  singleHeightContainer(),

                  ///Punishment for not offering zakaat///
                  listTileofPillars(
                      "Punishment for not offering zakaat",
                      "his is tile number 1 Trailing expansion arrow icon Trailing"
                          ' expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow ic'
                          'on Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon'
                          ' Trailing expansion arrow icon Trailing expan',
                      "وہ چیزیں جو نماز کو باطل کرتی ہیں وہ چیزیں جو نماز کو باطل کرتی ہیں"),
                  singleHeightContainer(),
                ],
              ),
            )));
  }

  static Widget singleHeightContainer() {
    return Container(
      color: Colors.grey,
      height: 1,
    );
  }

  static Widget listTileofPillars(
      String title, String discription, String urduDiscription) {
    return ExpansionTile(
      title: Text(title),
      children: <Widget>[
        ListTile(
            title: Center(
          child: Column(
            children: [
              Text(urduDiscription,
                  textDirection: TextDirection.rtl, style: TextStyle()),
              SizedBox(
                height: 9,
              ),
              Text(
                discription,
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
            ],
          ),
        )),
      ],
    );
  }
}
