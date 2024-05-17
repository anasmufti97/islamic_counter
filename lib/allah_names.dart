import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllahNamesScreen extends StatefulWidget {
  const AllahNamesScreen({Key? key}) : super(key: key);

  @override
  _AllahNamesScreenState createState() => _AllahNamesScreenState();
}

class _AllahNamesScreenState extends State<AllahNamesScreen> {
  static List<String> allahNamesList = [
    "1 Ar Rahmaan	  	الرحمٰن	انتہائی مہربان	The Most Gracious	",
    "2 Ar Raheem	  	الرَّحِيْم	انتہائی رحم کرنے والا	The Most Merciful",
    "3 Al Malik	 	الْمَلِك	مالک، بادشاہ	The Owner, The King,",
    "4 Al Qudoos 		القُدُّوس	مقدس، پاک، عیبوں سے پاک	The Absolutely Pure, The most Holy, The Most sacred",
    "5 As Salam	 	السَّلَام	سلامتی والا	Only provider of Peace",
    "6 Al Momin	 	المُؤْمِن	ایمان عطاء کرنے والا، امن دینے والا	The One Who gives Emaan and Security	",
    " 7	Al Muhaimin 		المُهَيْمِن	محافظ	The Guardian, The Witness, The Overseer"
        "  8	Al Azeez	 	العَزِیز	غالب، زبردست، غلبہ والا، عزت دینے والا	The All Mighty",
    "  9	Al Jabbaar	  	الجَبًار	زبردست	The Compeller, The Restorer",
    " 10	Al Mutaqabir	 	المُتَکَبِر	بڑائی والا، بزرگی والا	The Supreme, The Majestic",
    "11	Al Khaliq	  	الخَالِق	پیدا کرنے والا	The Creator, The Maker",
    "12	Al Baari	  	البَارِی	پیدا کرنے والا	The Originator",
    "  13	Al Musawir	  	المُصَوِر	صورت بنانے والا	The Fashioner",
    "  14	Al Ghaffar	  	الغَفًار	بخشنے والا	The All- and Oft-Forgiving",
    "  15	Al Qahhaar	 	القَھًار	زبردست، قہر نازل کرنے والا	The Subduer, The Ever-Dominating",
    "  16	Al Wahhab	 	الوَھًاب	عطاء کرنے والا	The Giver of Gifts",
    "  17	Al Razzaq	 	الرَزَۙاق	رزق دینے والا	The Provider",
    "  18	Al Fataah	  	الفتح، الفتًاح	کھولنے والا	The Opener, The Judge",
    "  19	Al Aleeem	  	العَلِیم	جاننے والا، علم والا، باخبر	The All-Knowing, The Omniscient",
    "  20	Al Qaabiz	  	القَابِض	قبض کرنے والا	The Withholder",
    "  21	Al Basit	  	البَاسِط	فراخ کرنے والا	The Extender",
    "  22	Al Khafz	  	الخَافِض	پست کرنے والا	The Reducer, The Abaser",
    "  23	Al Rafey	  	الرَافِع	بلند کرنے والا	The Exalter, The Elevator",
    "  24	Al Mueez	 	المُعِز	عزت دینے والا	The Honourer, The Bestower",
    "  25	Al Muzzil	  	المُزِل	ذلت دینے والا	The Dishonourer, The Humiliator",
    "  26	Al Sami	 	السَمِیع	سننے والا	The All-Hearing",
    "  27	Al Baseer	 	البَصِیر	دیکھنے والا	The All-Seeing",
    "  28	Al Haqam	 	الحَکَم	فیصلہ کرنے والا، حاکم	The Judge, The Giver of Justice",
    "  29	Al Adal	 	العَدَل	انصاف کرنے والا	The Utterly Just",
    "  30	Al Lateef	 	اللَّطِيف	مہربان	The Subtle One, The Most Gentle",
    "  31	Al Khabeer	 	الخَبِير	خبردار، جاننے والا،خبر رکھنے والا	The Acquainted, the All-Aware",
    "  32	Al Haleem	 	الحَلِيم	بردبار	The Most Forbearing",
    "  33	Al Azeem	 	العَظِيم	عظمت والا، بڑائی والا، بڑا	The Magnificent, The Supreme",
    "  34	Al Ghafoor	 	الغَفُور	معافی دینے والا	The Forgiving, The Exceedingly Forgiving",
    "35	Ash shakoor	 	الشَّكُور	قدردان	The Most Appreciative",
    "  36	Al Alee	  	العَلِي	اعلیٰ، سب سے افضل، برتر	The Most High, The Exalted",
    "  37	Al Kabeer	  	الكَبِير	بزرگی والا	The Greatest, The Most Grand",
    "  38	Al Hafeez	  	الحَفِيظ	حفاظت کرنے والا، نگہبان	The Preserver, The All-Heedful and All-Protecting",
    "  39	Al Muqeet	  	المُقِيت	باقی رہنے والا، روزی دینے والا، نگہبان، قوت دینے والا	The Sustainer",
    "  40	Al Haseeb	  	الحَسِيب	حساب لینے والا	The Reckoner, The Sufficient",
    "  41	Al Jaleel	  	الجَلِيل	بزرگ،	The Majestic",
    "  42	Al Kareem	  	الکَرِیِم	کرم کرنے والا	The Most Generous, The Most Esteemed",
    "  43	Ar Raqeeb	  	الرَّقِيب	خیال رکھنے والا	The Watchful",
    "  44	Al Mujeeb	  	المُجِيب	قبول کرنے والا	The Responsive One",
    "  45	Al Waasi	  	الوَاسِع	لامحدود	The All-Encompassing, the Boundless",
    "  46	Al Hakeem	  	الحَكِيم	حکمت والا	The All-Wise",
    "  47	Al Wadood	  	الوَدُود	محبت کرنے والا	The Most Loving",
    "  48	Al Majeed	  	المَجِيد	بزرگی والا	The Glorious, The Most Honorable",
    "  49	Al Ba’is	  	البَاعِث	اسباب پیدا کرنے والا	The Resurrector, The Raiser of the Dead",
    "  50	Ash Shaheed	  الشَّهِيد	گواہ	The All  and Ever Witnessing",
    "  51	Al Haqq	  	الحَقُ	سچ	The Absolute Truth",
    "  52	Al Wakeel	  	الوَكِيل	وکیل،کارساز	The Trustee, The Disposer of Affairs",
    "  53	Al Qawiyy	  	القَوِيُ	سب سے زیادہ طاقتور	The All Strong",
    "  54	Al Mateen	 	الْمَتِين	مضبوط، قوت والا	The Firm, The Steadfast",
    "  55	Al waliyy	  	الوَلِيُ	دوست	The Protecting Associate",
    "  56	Al Hameed	  	الحَمِيد	تعریف والا	The Praiseworthy",
    "  57	Al Muhsee	 	المُحْصِي	شمار کرنے والا	The All-Enumerating, The Counter",
    "  58	Al Mubdi	 	المُبْدِئ	عدم سے عالم کو وجود لانے والا	The Originator, The Initiator",
    "  59	Al Mueed	 	المُعِيد	لوٹانے والا، پناہ دینے والا	The Restorer, The Reinstater",
    "  60	Al Muhyee	 	المُحْيِى	زندگی دینے والا	The Giver of Life",
    "  61	Al Mumeet	 	المُمِيت	موت دینے والا	The Bringer of Death, the Destroyer",
    "  62	Al Hayy	 	الحَىُ	زندہ، ہمیشہ رہنے والا	The Ever-Living",
    "  63	Al Qayyoom	 	القَيُّوم	قائم رہنے والا	The Sustainer, The Self-Subsisting",
    "  64	Al Wajid	 	الوَاجِد	حاصل کرنے والا	The Perceiver",
    "  65	Al Majid	 	المَاجِد	بزرگی دینے والا	The Illustrious, the Magnificentv",
    "  66	Al Wahid	 	الوَاحِد	اکیلا	The One",
    "  67	Al Ahad	  	الأَحَد	ایک	The Unique, The Only One",
    "  68	As Samad	 	الصَّمَد	بے نیاز، مضبوط	The Eternal, Satisfier of Needs",
    "  69	Al Qadir	 	ٱلْقَادِرُ	قدرت والا	The Capable, The Powerful",
    "  70	Al Muqtadir	 	المُقْتَدِر	اقتدار والا،  قادر مطلق	The Omnipotent",
    "  71	Al Muqaddim	 	المُقَدِّم	آگے کرنے والا	The Expediter, The Promoter",
    "  72	Al Mu’akhkhir	 	المُؤَخِّر	پیچھے کرے والا	The Delayer, the Retarder",
    "  73	Al Awwal	 	الأَوَّل	پہلا	The First",
    "  74	Al Aakhir	 	الآخِر	آخر	The Last",
    "  75	Az Zahir	 	الظَّاهِر	ظاہر	The Manifest",
    "  76	Al Baatin	  	البَاطِن	چھپا ہوا، باطن کو جاننے والا	The Hidden One, Knower of the Hidden",
    "  77	Al Waali	  	الوَالِي		The Governor, The Patron",
    "  78	Al Muta’ali	  	المُتَعَالِي	بزرگ	The Self Exalted",
    "  79	Al Barr	  	الْبَرُّ	نیکیوں کا سرچشمہ	The Source of Goodness, the Kind Benefactor",
    "  80	At Tawwab	  	التَّوَّاب	توبہ قبول کرنے والا	The Ever-Pardoning, The Relenting",
    "  81	Al Muntaqim	  	المُنْتَقِم	انتقام لینے والا	The Avenger",
    "  82	Al ‘Afuww	  	العَفُوُّ	معاف کرنے والا	The Pardoner",
    "  83	Ar Rauf	 	الرَّؤُف	رحم کرنے والا، شفقت کرنے ولا	The Most Kind",
    "  84	Maalik-ul-mulk	   	مَالِكُ ٱلْمُلْك	دو جہاں کا مالک	Master of the Kingdom, Owner of the Dominion",
    "  85	Zul-jalaali wal-ikraam	   	ذُو الْجَلَالِ وَالْإِكْرَام	جلال اور انعام و اکرام والا	Possessor of Glory and Honour, Lord of Majesty and Generosity",
    "  86	Al Muqsit	 	المُقْسِط	انصاف کرنے والا	The Equitable, the Requiter",
    "  87	Al Jaami’	 	الجَامِع	جمع کرنے والا	The Gatherer, the Uniter",
    "  88	Al Ghaniyy	 	الغَني	بے پرواہ، غنی	The Self-Sufficient, The Wealthy",
    "  89	Al Mughni	 	المُغنِي	بے نیاز	The Enricher",
    "  90	Al Mani’	 	المَانِع	روکنے والا، باز رکھنے والا	The Withholder",
    "  91	Az Zaar	  	الضَّار	نقصان کا مالک	The Distresser,The creator of harm",
    "  92	An Nafi’	 	النَّافِع	نفع کا مالک، نفع دینے والا	The Propitious, the Benefactor",
    "  93	An Nur	 	النُّور	روشن، روشنی دینے والا	The Light, The Illuminator",
    "  94	Al Haadi	 	الهَادِی	ہدایت دینے والا، راستہ دکھانے والا	The Guide",
    "  95	Al Badee’	 	البَدِيع	نادر پیدا کرنے والا	The Incomparable Originator",
    "  96	Al Baaqi	 	البَاقِی	ہمیشہ رہنے والا	The Ever-Surviving, The Everlasting",
    "  97	Al Waaris	  	الوَارِث	وارث	The Inheritor, The Heir",
    "  98	Ar Rasheed 	 	الرَّشِيد	ہدایت دینے والا، رہنمائی کرنے والا	The Guide, Infallible Teacher",
    "99	As Saboor	  	الصَّبُور	صبر کرنے والا	The Forbearing, The Patient",
  ];

  //
  // final List<AllahNamesModelClass> AllahNamesScreenList = List.generate(
  //     allahNamesList.length,
  //     (index) => AllahNamesModelClass(allahNamesList[index],
  //         allahNamesInEnglishList[index], allahNamesMeaningList[index]));
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red.shade900,
          title: Text("Allah Almighty"),
          centerTitle: true,
        ),
        body: Container(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: allahNamesList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 10.0, left: 10, top: 13),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      (allahNamesList[index].toUpperCase()).toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black, fontSize: Get.height * 0.02),
                    ),
                  ),
                  height: Get.height * 0.15,
                  width: Get.width * 0.7,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.red, width: 3),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6)),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
