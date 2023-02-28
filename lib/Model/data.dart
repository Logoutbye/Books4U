
class Book {

  String title;
  String description;
  String score;
  String image;
  String path;
  bool liked;


  Book(this.title, this.description, this.score, this.image,this.path,this.liked);

}
//REcommeded Books
List<Book> getRecommendedBookList(){
  return <Book>[ 
       Book(
      "How to Motivate Yourself and Others",
      "To achieve goals, individuals and organizations must understand how to effectively"
      "Motivate themselves and others. We review three broad strategies that people employ to increase motivation: giving feedback, setting goal targets, and applying incentives.Although each of these strategies can effectively motivate action under certain circumstances and among certain people, they can also result in unintended consequences: not helping or even hurting motivation. For example, employers may give positive feedback that leads employees to relax their effort or negative feedback that undermines employees’ commitment, organizations may set goals that are overly ambitious and consequently reduce motivation, and certain incentives might appear attractive before pursuing an action but uncertain incentives better motivate action during goal pursuit. By identifying when and how these common motivational strategies work versus fail, we are able to prescribe a specific set of guidelines that will help people understand how to motivate themselves and others.",
      "4.14",
      "assets/Motivational_Book/10. How to Motivate Yourself and Others_ Intended and Unintended Consequences author Juliana Schroeder, Ayelet Fishbach.png",
      "assets/Motivational_Book/10. How to Motivate Yourself and Others_ Intended and Unintended Consequences author Juliana Schroeder, Ayelet Fishbach.pdf",
      false
    ),
        Book(
      "تفسیر الاصول",
      "Taiseer ul Usool Sharh Urdu Tasheel ul Usool By Maulana Muhammad Fuzail Quraishi تیسیر الاصول شرح اردو تسہیل الاصول  ",
      "4.14",
      "assets/Islamic_Books/Urdu/Darsi/تفسیر الاصول.png",
      "assets/Islamic_Books/Urdu/Darsi/تفسیر الاصول.pdf",
      false
    ),
          Book(
      "Motivation author Basic\nKnowledge 101",
      "Motivation is a theoretical construct used to explain behavior. It represents the reasons for people’s actions, desires, and needs. Motivation can also be defined as one’s direction to behavior, or what causes a person to want to repeat a behavior and vice versa.[1] A motive is what prompts the person to act in a certain way, or at least develop an inclination for specific behavior.",
      "4.14",
      "assets/Motivational_Book/08. Motivation author Basic Knowledge 101.png",
      "assets/Motivational_Book/08. Motivation author Basic Knowledge 101.pdf",
      false
    ),
    Book(
          "ہندوستان کی آزادی اور علماے اہل سنت",
     "اہل حدیث ایک دینی تحریک ہے جو شمالی ہند میں سید نذیر حسین اور صدیق حسن خان کی تعلیمات سے انیسویں صدی کے وسط میں وجود میں آئی۔اہل حدیث کا دعویٰ ہے کہ وہ اہل حدیث کی فکر کے حامل ہیں۔اہل حدیث قرآن، سنت اور حدیث کو ہی اسلامی تعلیمات کے ماخذ مانتے ہیں اور ابتدائی زمانے کے بعد اسلام میں متعارف ہونے والی ہر چیز کی مخالفت کرتے ہیں اور تقلید کا رد کرتے ہیں۔ یہ تحریک سعودی عرب کی سلفی تحریک ہی کی جیسی ہے۔ لیکن یہ تحریک خود کو وہابی تحریک سے الگ ہونے کا دعویٰ کرتی ہے۔ بعض کے نزدیک ان کے اور عرب سلفی تحریک کے درمیان میں قابل ذکر فرق ہے. وہ اسلام کی قدیم تعلیمات (اہل حدیث) کی پابندی کرتے ہیں جیسا کہ قرآن مجید اور سنت نبوی میں بیان کیا گیا ہے (نبی اکرم صلی اللہ علیہ وآلہ وسلم کے احکام، طریق کار اور منظوری) اور ان چیزوں کو مسترد کرتے ہیں جن کا اسلامی شریعت میں حکم نہیں دیا گیا ہے۔ اہل حدیث کے پیروکار کسی بھی فقہ کی تقلید نہیں کرتے ہیں۔",
     "4.14",
      "assets/Islamic_Books/Urdu/Historic/ہندوستان کی آزادی اور علماے اہل سنت.png",
      "assets/Islamic_Books/Urdu/Historic/ہندوستان کی آزادی اور علماے اہل سنت.pdf",
      false
    ), 
     Book(
      "شرح جامع ترمذی جلد 2",
      "یہ کتاب مفید ہے اور مسلمانوں کے لیے بہت اہمیت کی حامل ہے۔ کم از کم کراس چیکنگ کے ساتھ یہ کتاب شائع ہوئی۔ اس کتاب میں مختلف دلائل، حالات و واقعات کی وضاحت کے چند نظریات اور پہلو بھی شامل ہیں۔",
      "4.14",
      "assets/Islamic_Books/Urdu/Hadits/شرح جامع ترمذی جلد 2.png",
      "assets/Islamic_Books/Urdu/Hadits/شرح جامع ترمذی جلد 2.pdf",
      false
    ),
    Book(
      "تفسیر آیتہ رحمة للعلمین",
      "Mukhsar al qudoori is the best source of fiqah hanfi. it has all issues related to prayer, fasting, zakat and hajj. it is in arabic language so needs so explanation in urdu language. anwar ul qudoori is a good choice for students and teachers",
      "4.14",
      "assets/Islamic_Books/Urdu/Tafseer/تفسیر نعیمی جلد 1.png",
      "assets/Islamic_Books/Urdu/Tafseer/تفسیر نعیمی جلد 1.pdf",
      false
    ),

  ];
}


//  historic book list in all languages
List<Book> getUrduHistoricBookList(){
  return <Book>[  
          Book(
          "ہندوستان کی آزادی اور علماے اہل سنت",
     "اہل حدیث ایک دینی تحریک ہے جو شمالی ہند میں سید نذیر حسین اور صدیق حسن خان کی تعلیمات سے انیسویں صدی کے وسط میں وجود میں آئی۔اہل حدیث کا دعویٰ ہے کہ وہ اہل حدیث کی فکر کے حامل ہیں۔اہل حدیث قرآن، سنت اور حدیث کو ہی اسلامی تعلیمات کے ماخذ مانتے ہیں اور ابتدائی زمانے کے بعد اسلام میں متعارف ہونے والی ہر چیز کی مخالفت کرتے ہیں اور تقلید کا رد کرتے ہیں۔ یہ تحریک سعودی عرب کی سلفی تحریک ہی کی جیسی ہے۔ لیکن یہ تحریک خود کو وہابی تحریک سے الگ ہونے کا دعویٰ کرتی ہے۔ بعض کے نزدیک ان کے اور عرب سلفی تحریک کے درمیان میں قابل ذکر فرق ہے. وہ اسلام کی قدیم تعلیمات (اہل حدیث) کی پابندی کرتے ہیں جیسا کہ قرآن مجید اور سنت نبوی میں بیان کیا گیا ہے (نبی اکرم صلی اللہ علیہ وآلہ وسلم کے احکام، طریق کار اور منظوری) اور ان چیزوں کو مسترد کرتے ہیں جن کا اسلامی شریعت میں حکم نہیں دیا گیا ہے۔ اہل حدیث کے پیروکار کسی بھی فقہ کی تقلید نہیں کرتے ہیں۔",
     "4.14",
      "assets/Islamic_Books/Urdu/Historic/ہندوستان کی آزادی اور علماے اہل سنت.png",
      "assets/Islamic_Books/Urdu/Historic/ہندوستان کی آزادی اور علماے اہل سنت.pdf",
      false
    ), 

    Book(
      "امام جعفر صادق کی فاتحہ",
      "زمانہ امام جعفر صادق 34 سال پہ محیط ہے (114ھ تا 148ھ) ان میں معجزات وکرامات اور ارشادات بھی ہیں جنہیں الجرائح و الخرائج نے اور تزکرة المعصومین نے تفصیل سے لکھا ہے امام علم لدنی کے مالک تھے اور پسندیدہ رب تھے ایک صحابی نے دعا کے لیے کہا آپ نے اپنے الله سے التجا کر کے مراد پوری کر دی صحابی نے عقیدت میں نیاز تیار کی کونڈے میں رکھ کر صبح کی نماز کے بعد نمازیوں کو کھلا دی (22 رجب تھی) لوگوں نے دیکھا دیکھی منتیں ماننا شروع کر دیں جن کی پوری ہوگئیں کونڈے بھرنے شروع ہو گے۔",
      "4.14",
      "assets/Islamic_Books/Urdu/Historic/امام جعفر صادق کی فاتحہ.png",
      "assets/Islamic_Books/Urdu/Historic/امام جعفر صادق کی فاتحہ.pdf",
      false
    ),    
  ];
}

List<Book> getPashtoHistoricBookList(){
  return <Book>[  
          Book(
          "ہندوستان کی آزادی اور علماے اہل سنت",
     "اہل حدیث ایک دینی تحریک ہے جو شمالی ہند میں سید نذیر حسین اور صدیق حسن خان کی تعلیمات سے انیسویں صدی کے وسط میں وجود میں آئی۔اہل حدیث کا دعویٰ ہے کہ وہ اہل حدیث کی فکر کے حامل ہیں۔اہل حدیث قرآن، سنت اور حدیث کو ہی اسلامی تعلیمات کے ماخذ مانتے ہیں اور ابتدائی زمانے کے بعد اسلام میں متعارف ہونے والی ہر چیز کی مخالفت کرتے ہیں اور تقلید کا رد کرتے ہیں۔ یہ تحریک سعودی عرب کی سلفی تحریک ہی کی جیسی ہے۔ لیکن یہ تحریک خود کو وہابی تحریک سے الگ ہونے کا دعویٰ کرتی ہے۔ بعض کے نزدیک ان کے اور عرب سلفی تحریک کے درمیان میں قابل ذکر فرق ہے. وہ اسلام کی قدیم تعلیمات (اہل حدیث) کی پابندی کرتے ہیں جیسا کہ قرآن مجید اور سنت نبوی میں بیان کیا گیا ہے (نبی اکرم صلی اللہ علیہ وآلہ وسلم کے احکام، طریق کار اور منظوری) اور ان چیزوں کو مسترد کرتے ہیں جن کا اسلامی شریعت میں حکم نہیں دیا گیا ہے۔ اہل حدیث کے پیروکار کسی بھی فقہ کی تقلید نہیں کرتے ہیں۔",
     "4.14",
      "assets/Islamic_Books/Urdu/Historic/ہندوستان کی آزادی اور علماے اہل سنت.png",
      "assets/Islamic_Books/Urdu/Historic/ہندوستان کی آزادی اور علماے اہل سنت.pdf",
      false
    ), 

    Book(
      "امام جعفر صادق کی فاتحہ",
      "زمانہ امام جعفر صادق 34 سال پہ محیط ہے (114ھ تا 148ھ) ان میں معجزات وکرامات اور ارشادات بھی ہیں جنہیں الجرائح و الخرائج نے اور تزکرة المعصومین نے تفصیل سے لکھا ہے امام علم لدنی کے مالک تھے اور پسندیدہ رب تھے ایک صحابی نے دعا کے لیے کہا آپ نے اپنے الله سے التجا کر کے مراد پوری کر دی صحابی نے عقیدت میں نیاز تیار کی کونڈے میں رکھ کر صبح کی نماز کے بعد نمازیوں کو کھلا دی (22 رجب تھی) لوگوں نے دیکھا دیکھی منتیں ماننا شروع کر دیں جن کی پوری ہوگئیں کونڈے بھرنے شروع ہو گے۔",
      "4.14",
      "assets/Islamic_Books/Urdu/Historic/امام جعفر صادق کی فاتحہ.png",
      "assets/Islamic_Books/Urdu/Historic/امام جعفر صادق کی فاتحہ.pdf",
      false
    ),     
  ];
}

List<Book> getEnglishHistoricBookList(){
  return <Book>[  
          Book(
          "ہندوستان کی آزادی اور علماے اہل سنت",
     "اہل حدیث ایک دینی تحریک ہے جو شمالی ہند میں سید نذیر حسین اور صدیق حسن خان کی تعلیمات سے انیسویں صدی کے وسط میں وجود میں آئی۔اہل حدیث کا دعویٰ ہے کہ وہ اہل حدیث کی فکر کے حامل ہیں۔اہل حدیث قرآن، سنت اور حدیث کو ہی اسلامی تعلیمات کے ماخذ مانتے ہیں اور ابتدائی زمانے کے بعد اسلام میں متعارف ہونے والی ہر چیز کی مخالفت کرتے ہیں اور تقلید کا رد کرتے ہیں۔ یہ تحریک سعودی عرب کی سلفی تحریک ہی کی جیسی ہے۔ لیکن یہ تحریک خود کو وہابی تحریک سے الگ ہونے کا دعویٰ کرتی ہے۔ بعض کے نزدیک ان کے اور عرب سلفی تحریک کے درمیان میں قابل ذکر فرق ہے. وہ اسلام کی قدیم تعلیمات (اہل حدیث) کی پابندی کرتے ہیں جیسا کہ قرآن مجید اور سنت نبوی میں بیان کیا گیا ہے (نبی اکرم صلی اللہ علیہ وآلہ وسلم کے احکام، طریق کار اور منظوری) اور ان چیزوں کو مسترد کرتے ہیں جن کا اسلامی شریعت میں حکم نہیں دیا گیا ہے۔ اہل حدیث کے پیروکار کسی بھی فقہ کی تقلید نہیں کرتے ہیں۔",
     "4.14",
      "assets/Islamic_Books/Urdu/Historic/ہندوستان کی آزادی اور علماے اہل سنت.png",
      "assets/Islamic_Books/Urdu/Historic/ہندوستان کی آزادی اور علماے اہل سنت.pdf",
      false
    ), 

    Book(
      "امام جعفر صادق کی فاتحہ",
      "زمانہ امام جعفر صادق 34 سال پہ محیط ہے (114ھ تا 148ھ) ان میں معجزات وکرامات اور ارشادات بھی ہیں جنہیں الجرائح و الخرائج نے اور تزکرة المعصومین نے تفصیل سے لکھا ہے امام علم لدنی کے مالک تھے اور پسندیدہ رب تھے ایک صحابی نے دعا کے لیے کہا آپ نے اپنے الله سے التجا کر کے مراد پوری کر دی صحابی نے عقیدت میں نیاز تیار کی کونڈے میں رکھ کر صبح کی نماز کے بعد نمازیوں کو کھلا دی (22 رجب تھی) لوگوں نے دیکھا دیکھی منتیں ماننا شروع کر دیں جن کی پوری ہوگئیں کونڈے بھرنے شروع ہو گے۔",
      "4.14",
      "assets/Islamic_Books/Urdu/Historic/امام جعفر صادق کی فاتحہ.png",
      "assets/Islamic_Books/Urdu/Historic/امام جعفر صادق کی فاتحہ.pdf",
      false
    ),    
  ];
}

List<Book> getArabicHistoricBookList(){
  return <Book>[  
          Book(
          "ہندوستان کی آزادی اور علماے اہل سنت",
     "اہل حدیث ایک دینی تحریک ہے جو شمالی ہند میں سید نذیر حسین اور صدیق حسن خان کی تعلیمات سے انیسویں صدی کے وسط میں وجود میں آئی۔اہل حدیث کا دعویٰ ہے کہ وہ اہل حدیث کی فکر کے حامل ہیں۔اہل حدیث قرآن، سنت اور حدیث کو ہی اسلامی تعلیمات کے ماخذ مانتے ہیں اور ابتدائی زمانے کے بعد اسلام میں متعارف ہونے والی ہر چیز کی مخالفت کرتے ہیں اور تقلید کا رد کرتے ہیں۔ یہ تحریک سعودی عرب کی سلفی تحریک ہی کی جیسی ہے۔ لیکن یہ تحریک خود کو وہابی تحریک سے الگ ہونے کا دعویٰ کرتی ہے۔ بعض کے نزدیک ان کے اور عرب سلفی تحریک کے درمیان میں قابل ذکر فرق ہے. وہ اسلام کی قدیم تعلیمات (اہل حدیث) کی پابندی کرتے ہیں جیسا کہ قرآن مجید اور سنت نبوی میں بیان کیا گیا ہے (نبی اکرم صلی اللہ علیہ وآلہ وسلم کے احکام، طریق کار اور منظوری) اور ان چیزوں کو مسترد کرتے ہیں جن کا اسلامی شریعت میں حکم نہیں دیا گیا ہے۔ اہل حدیث کے پیروکار کسی بھی فقہ کی تقلید نہیں کرتے ہیں۔",
     "4.14",
      "assets/Islamic_Books/Urdu/Historic/ہندوستان کی آزادی اور علماے اہل سنت.png",
      "assets/Islamic_Books/Urdu/Historic/ہندوستان کی آزادی اور علماے اہل سنت.pdf",
      false
    ), 

    Book(
      "امام جعفر صادق کی فاتحہ",
      "زمانہ امام جعفر صادق 34 سال پہ محیط ہے (114ھ تا 148ھ) ان میں معجزات وکرامات اور ارشادات بھی ہیں جنہیں الجرائح و الخرائج نے اور تزکرة المعصومین نے تفصیل سے لکھا ہے امام علم لدنی کے مالک تھے اور پسندیدہ رب تھے ایک صحابی نے دعا کے لیے کہا آپ نے اپنے الله سے التجا کر کے مراد پوری کر دی صحابی نے عقیدت میں نیاز تیار کی کونڈے میں رکھ کر صبح کی نماز کے بعد نمازیوں کو کھلا دی (22 رجب تھی) لوگوں نے دیکھا دیکھی منتیں ماننا شروع کر دیں جن کی پوری ہوگئیں کونڈے بھرنے شروع ہو گے۔",
      "4.14",
      "assets/Islamic_Books/Urdu/Historic/امام جعفر صادق کی فاتحہ.png",
      "assets/Islamic_Books/Urdu/Historic/امام جعفر صادق کی فاتحہ.pdf",
      false
    ),  
  ];
  
}
// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  Hadits book list in all languages

List<Book> getUrduHaditsBookList(){
  return <Book>[  
    Book(
      "انوار الحدیث",
      "اس کتاب میں آپ پڑھ سکیں گے:جنتی اور جہنمی فرقہ،حوض کوثر اور شفاعت،فضائل سید المرسلین، حضورعلیہ السلام کا مثل کوئی نہیں اور بہت کچھ ۔ ۔ ۔",
      "4.14",
      "assets/Islamic_Books/Urdu/Hadits/انوار الحدیث.png",
      "assets/Islamic_Books/Urdu/Hadits/انوار الحدیث.pdf",
      false
    ), 
        Book(
      "شرح جامع ترمذی جلد 2",
      "یہ کتاب مفید ہے اور مسلمانوں کے لیے بہت اہمیت کی حامل ہے۔ کم از کم کراس چیکنگ کے ساتھ یہ کتاب شائع ہوئی۔ اس کتاب میں مختلف دلائل، حالات و واقعات کی وضاحت کے چند نظریات اور پہلو بھی شامل ہیں۔",
      "4.14",
      "assets/Islamic_Books/Urdu/Hadits/شرح جامع ترمذی جلد 2.png",
      "assets/Islamic_Books/Urdu/Hadits/شرح جامع ترمذی جلد 2.pdf",
      false
    ),  
        Book(
      "شرح جامع ترمذی جلد 1",
      "جامع ترمذی یا سنن ترمذی حدیث کی چھ بڑی کتابوں میں سے ایک ہے جسے کطب السطح کہا جاتا ہے۔ الترمذی وہ شخص ہے جس نے حدیث کے اس وسیع ذخیرے کو مرتب کیا۔ آپ نے اسے 250 ہجری کے بعد مرتب کرنا شروع کیا اور 270 ہجری میں مکمل کیا اس میں 3,954 احادیث ہیں اور اسے 51 ابواب میں تقسیم کیا گیا ہے۔ اسے سنن کے طور پر بھی درجہ بندی کیا گیا ہے، جس کا مطلب یہ ہے کہ کتاب کو قانونی ابواب کے مطابق کیا گیا ہے۔",
     "4.14",
      "assets/Islamic_Books/Urdu/Hadits/شرح جامع ترمذی جلد 1.png",
      "assets/Islamic_Books/Urdu/Hadits/شرح جامع ترمذی جلد 1.pdf",
      false
    ),  
  ];
}

List<Book> getPashtoHaditsBookList(){
  return <Book>[  
    Book(
      "Anwaar-Ul-Quduri-Urdu-Sharh-\nAl-Quduri-Vol-1",
      "Mukhsar al qudoori is the best source of fiqah hanfi. it has all issues related to prayer, fasting, zakat and hajj. it is in arabic language so needs so explanation in urdu language. anwar ul qudoori is a good choice for students and teachers",
      "4.14",
      "assets/Islamic_Books/Urdu/Hadits/AnwaarUlQuduriUrduSharhAlQuduriVol1.png",
      "assets/Islamic_Books/Urdu/Hadits/AnwaarUlQuduriUrduSharhAlQuduriVol1.pdf",
      false
    ),      
  ];
}

List<Book> getEnglishHaditsBookList(){
  return <Book>[  
    Book(
      "Anwaar-Ul-Quduri-Urdu-Sharh-\nAl-Quduri-Vol-1",
      "Mukhsar al qudoori is the best source of fiqah hanfi. it has all issues related to prayer, fasting, zakat and hajj. it is in arabic language so needs so explanation in urdu language. anwar ul qudoori is a good choice for students and teachers",
      "4.14",
      "assets/Islamic_Books/Urdu/Hadits/AnwaarUlQuduriUrduSharhAlQuduriVol1.png",
      "assets/Islamic_Books/Urdu/Hadits/AnwaarUlQuduriUrduSharhAlQuduriVol1.pdf",
      false
    ),   
  ];
}

List<Book> getArabicHaditsBookList(){
  return <Book>[  
    Book(
      "Anwaar-Ul-Quduri-Urdu-Sharh-\nAl-Quduri-Vol-1",
      "Mukhsar al qudoori is the best source of fiqah hanfi. it has all issues related to prayer, fasting, zakat and hajj. it is in arabic language so needs so explanation in urdu language. anwar ul qudoori is a good choice for students and teachers",
      "4.14",
      "assets/Islamic_Books/Urdu/Hadits/AnwaarUlQuduriUrduSharhAlQuduriVol1.png",
      "assets/Islamic_Books/Urdu/Hadits/AnwaarUlQuduriUrduSharhAlQuduriVol1.pdf",
      false
    ),     
  ];
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  Tafseer book list in all languages

List<Book> getUrduTafseerBookList(){
  return <Book>[  
        Book(
      "تفسیر آیتہ رحمة للعلمین",
      "Mukhsar al qudoori is the best source of fiqah hanfi. it has all issues related to prayer, fasting, zakat and hajj. it is in arabic language so needs so explanation in urdu language. anwar ul qudoori is a good choice for students and teachers",
      "4.14",
      "assets/Islamic_Books/Urdu/Tafseer/تفسیر نعیمی جلد 1.png",
      "assets/Islamic_Books/Urdu/Tafseer/تفسیر نعیمی جلد 1.pdf",
      false
    ),
    Book(
      "تفسیر آیتہ رحمة للعلمین",
      "رحمۃ للعالمین مشہور سیرت نگار قاضی محمد سلیمان منصور پوری کی اردو زبان میں سیرت کی بہترین، مقبول ترین اور منفرد خصوصیات کی حامل کتاب ہے، جو 3 جلدوں پر مشتمل ہے۔ مؤلف کی مؤرخانہ بصیرت، اسلوب بیان کی ندرت، مثبت انداز بیان، داعیانہ شیریں بیانی، جاندار اور پر حکمت اسلوب، شستہ انداز تحریر کی بدولت اپنی نوعیت کی ایک بہت ہی منفرد تصنیف ہ",
      "4.14",
      "assets/Islamic_Books/Urdu/Tafseer/تفسیر آیتہ رحمة للعلمین .png",
      "assets/Islamic_Books/Urdu/Tafseer/تفسیر آیتہ رحمة للعلمین .pdf",
      false
    ),

  ];
}

List<Book> getPashtoTafseerBookList(){
  return <Book>[  
    Book(
      "تفسیر آیتہ رحمة للعلمین",
      "رحمۃ للعالمین مشہور سیرت نگار قاضی محمد سلیمان منصور پوری کی اردو زبان میں سیرت کی بہترین، مقبول ترین اور منفرد خصوصیات کی حامل کتاب ہے، جو 3 جلدوں پر مشتمل ہے۔ مؤلف کی مؤرخانہ بصیرت، اسلوب بیان کی ندرت، مثبت انداز بیان، داعیانہ شیریں بیانی، جاندار اور پر حکمت اسلوب، شستہ انداز تحریر کی بدولت اپنی نوعیت کی ایک بہت ہی منفرد تصنیف ہ",
      "4.14",
      "assets/Islamic_Books/Urdu/Tafseer/تفسیر آیتہ رحمة للعلمین .png",
      "assets/Islamic_Books/Urdu/Tafseer/تفسیر آیتہ رحمة للعلمین .pdf",
      false
    ),    
  ];
}

List<Book> getEnglishTafseerBookList(){
  return <Book>[  
    Book(
      "تفسیر آیتہ رحمة للعلمین",
      "رحمۃ للعالمین مشہور سیرت نگار قاضی محمد سلیمان منصور پوری کی اردو زبان میں سیرت کی بہترین، مقبول ترین اور منفرد خصوصیات کی حامل کتاب ہے، جو 3 جلدوں پر مشتمل ہے۔ مؤلف کی مؤرخانہ بصیرت، اسلوب بیان کی ندرت، مثبت انداز بیان، داعیانہ شیریں بیانی، جاندار اور پر حکمت اسلوب، شستہ انداز تحریر کی بدولت اپنی نوعیت کی ایک بہت ہی منفرد تصنیف ہ",
      "4.14",
      "assets/Islamic_Books/Urdu/Tafseer/تفسیر آیتہ رحمة للعلمین .png",
      "assets/Islamic_Books/Urdu/Tafseer/تفسیر آیتہ رحمة للعلمین .pdf",
      false
    ),   
  ];
}

List<Book> getArabicTafseerBookList(){
  return <Book>[  
    Book(
      "تفسیر آیتہ رحمة للعلمین",
      "رحمۃ للعالمین مشہور سیرت نگار قاضی محمد سلیمان منصور پوری کی اردو زبان میں سیرت کی بہترین، مقبول ترین اور منفرد خصوصیات کی حامل کتاب ہے، جو 3 جلدوں پر مشتمل ہے۔ مؤلف کی مؤرخانہ بصیرت، اسلوب بیان کی ندرت، مثبت انداز بیان، داعیانہ شیریں بیانی، جاندار اور پر حکمت اسلوب، شستہ انداز تحریر کی بدولت اپنی نوعیت کی ایک بہت ہی منفرد تصنیف ہ",
      "4.14",
      "assets/Islamic_Books/Urdu/Tafseer/تفسیر آیتہ رحمة للعلمین .png",
      "assets/Islamic_Books/Urdu/Tafseer/تفسیر آیتہ رحمة للعلمین .pdf",
      false
    ),    
  ];
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  fiqha book list in all languages

List<Book> getUrduFiqaBookList(){
  return <Book>[  
    Book(
      "شرح حدیث نجد ",
      "یا اللہ! ہمارے شام اور یمن میں برکت فرما) صحابہ کرام نے عرض کیا: اورہمارے نجد میں بھی؟ تو آپ صلی اللہ علیہ وسلم نے فرمایا: (یا اللہ! ہمارے شام اور یمن میں برکت فرما)، صحابہ کرام نے عرض کیا: اورہمارے نجد میں بھی؟ تو آپ صلی اللہ علیہ وسلم نے فرمایا: (وہاں زلزلے، فتنے ہونگے اور وہیں سے شیطان کا سینگ رونما ہوگا:حدیث نجد، ایک مشہور حدیث ہے جسے متعدد صحابہ نے اور ان سے بہت سے تابعین نے روایت کیا ہے۔ اس حدیث میں نجد سے متعلق پیش گوئی ہے کہ وہاں سے فتنے پیدا ہوں گے۔ حدیث نجد کے معنی و مفہوم والی مختلف سندوں کے ساتھ کئی احاداث روایت کی گئی ہیں۔ تمام احادیث لفظ و معنی کے اعتبار سے آپس میں ملتی جلتی ہیں۔ ابن عمر کہتے ہیں کہ محمد صلی اللہ علیہ و آلہ و سلم نے فرمایا:",
      "4.14",
      "assets/Islamic_Books/Urdu/Fiqa/شرح حدیث نجد .png",
      "assets/Islamic_Books/Urdu/Fiqa/شرح حدیث نجد .pdf",
      false
    ),
        Book(
      "اصول الشاشی (سوالا جوابا)",
      "درس نظامی میں اصول فقہ کی نہایت مشہور و معروف اور اہم کتاب ’’اصول الشاشی‘‘ کا سوال جواب کے انداز میں اردو ایک بہترین نوٹ علامہ صدیق ہزاروی صاحب کے قلم سے بنام ’’اصول الشاشی سوالاً و جواباً ‘‘",
      "4.14",
      "assets/Islamic_Books/Urdu/Fiqa/اصول الشاشی (سوالا جوابا).png",
      "assets/Islamic_Books/Urdu/Fiqa/اصول الشاشی (سوالا جوابا).pdf",
      false
    ),
 
  ];
}

List<Book> getPashtoFiqaBookList(){
  return <Book>[  
     Book(
      "اصول الشاشی (سوالا جوابا)",
      "درس نظامی میں اصول فقہ کی نہایت مشہور و معروف اور اہم کتاب ’’اصول الشاشی‘‘ کا سوال جواب کے انداز میں اردو ایک بہترین نوٹ علامہ صدیق ہزاروی صاحب کے قلم سے بنام ’’اصول الشاشی سوالاً و جواباً ‘‘",
      "4.14",
      "assets/Islamic_Books/Urdu/Fiqa/اصول الشاشی (سوالا جوابا).png",
      "assets/Islamic_Books/Urdu/Fiqa/اصول الشاشی (سوالا جوابا).pdf",
      false
    ),   
  ];
}

List<Book> getEnglishFiqaBookList(){
  return <Book>[  
     Book(
      "اصول الشاشی (سوالا جوابا)",
      "درس نظامی میں اصول فقہ کی نہایت مشہور و معروف اور اہم کتاب ’’اصول الشاشی‘‘ کا سوال جواب کے انداز میں اردو ایک بہترین نوٹ علامہ صدیق ہزاروی صاحب کے قلم سے بنام ’’اصول الشاشی سوالاً و جواباً ‘‘",
      "4.14",
      "assets/Islamic_Books/Urdu/Fiqa/اصول الشاشی (سوالا جوابا).png",
      "assets/Islamic_Books/Urdu/Fiqa/اصول الشاشی (سوالا جوابا).pdf",
      false
    ),   
  ];
}

List<Book> getArabicFiqaBookList(){
  return <Book>[  
     Book(
      "اصول الشاشی (سوالا جوابا)",
      "درس نظامی میں اصول فقہ کی نہایت مشہور و معروف اور اہم کتاب ’’اصول الشاشی‘‘ کا سوال جواب کے انداز میں اردو ایک بہترین نوٹ علامہ صدیق ہزاروی صاحب کے قلم سے بنام ’’اصول الشاشی سوالاً و جواباً ‘‘",
      "4.14",
      "assets/Islamic_Books/Urdu/Fiqa/اصول الشاشی (سوالا جوابا).png",
      "assets/Islamic_Books/Urdu/Fiqa/اصول الشاشی (سوالا جوابا).pdf",
      false
    ),   
  ];
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  Fathwa book list in all languages

List<Book> getUrduFathwaBookList(){
  return <Book>[  
    Book(
      "انشورنس سے ملنے والی رقم سے حج کرنا",
      "انشورنس پالیسی لینا سود اور جوا ہونے کی وجہ سے جائز نہیں ہے، پس اگر کسی نے پالیسی لے لی ہو تو اسے چاہیے  کہ جلد از جلد اسے ختم کردے اور جو  رقم جمع کراچکا ہے صرف اتنی ہی رقم واپس لے لے، زائد رقم سود ہونے کی وجہ سے لینا جائز نہیں، اور اگر کسی نے زائد رقم لے لی ہو تو زائد رقم ثواب کی نیت کے بغیر صدقہ کرنا ضروری ہوگا۔ فقط واللہ اعلم",
      "4.14",
      "assets/Islamic_Books/Urdu/Fathwa/انشورنس سے ملنے والی رقم سے حج کرنا.png",
      "assets/Islamic_Books/Urdu/Fathwa/انشورنس سے ملنے والی رقم سے حج کرنا.pdf",
      false
    ),
    Book(
      "عدت میں پردے کے احکام",
      "سوال : کیا فرماتے ہیں عُلمائے کرام اس بارے میں کہ اگرکسی عورت کے شوہر کا انتقال ہوجائے تواسے اپنی عدت کے دوران کن لوگوں سے پردہ کرنا ضروری ہے اور کن سے نہیں؟ نیز اس دوران بھتیجوں بھانجوں یعنی سگے بھائی اور بہنوں کے بچّوں سے بھی پردہ کرنا لازم ہے یا نہیں؟ اسی طرح داماد سے پردہ ہے یا نہیں؟ بعض لوگ یہ بھی سمجھتے ہیں کہ عدتِ وفات میں آسمان سےبھی پردہ ہے ، کیایہ درست ہے؟",
      "4.14",
      "assets/Islamic_Books/Urdu/Fathwa/عدت میں پردے کے احکام.png",
      "assets/Islamic_Books/Urdu/Fathwa/عدت میں پردے کے احکام.pdf",
      false
    ),    
  ];
}

List<Book> getPashtoFathwaBookList(){
  return <Book>[  
   Book(
      "انشورنس سے ملنے والی رقم سے حج کرنا",
      "انشورنس پالیسی لینا سود اور جوا ہونے کی وجہ سے جائز نہیں ہے، پس اگر کسی نے پالیسی لے لی ہو تو اسے چاہیے  کہ جلد از جلد اسے ختم کردے اور جو  رقم جمع کراچکا ہے صرف اتنی ہی رقم واپس لے لے، زائد رقم سود ہونے کی وجہ سے لینا جائز نہیں، اور اگر کسی نے زائد رقم لے لی ہو تو زائد رقم ثواب کی نیت کے بغیر صدقہ کرنا ضروری ہوگا۔ فقط واللہ اعلم",
      "4.14",
      "assets/Islamic_Books/Urdu/Fathwa/انشورنس سے ملنے والی رقم سے حج کرنا.png",
      "assets/Islamic_Books/Urdu/Fathwa/انشورنس سے ملنے والی رقم سے حج کرنا.pdf",
      false
    ),
    Book(
      "عدت میں پردے کے احکام",
      "سوال : کیا فرماتے ہیں عُلمائے کرام اس بارے میں کہ اگرکسی عورت کے شوہر کا انتقال ہوجائے تواسے اپنی عدت کے دوران کن لوگوں سے پردہ کرنا ضروری ہے اور کن سے نہیں؟ نیز اس دوران بھتیجوں بھانجوں یعنی سگے بھائی اور بہنوں کے بچّوں سے بھی پردہ کرنا لازم ہے یا نہیں؟ اسی طرح داماد سے پردہ ہے یا نہیں؟ بعض لوگ یہ بھی سمجھتے ہیں کہ عدتِ وفات میں آسمان سےبھی پردہ ہے ، کیایہ درست ہے؟",
      "4.14",
      "assets/Islamic_Books/Urdu/Fathwa/عدت میں پردے کے احکام.png",
      "assets/Islamic_Books/Urdu/Fathwa/عدت میں پردے کے احکام.pdf",
      false
    ),  
  ];
}

List<Book> getEnglishFathwaBookList(){
  return <Book>[  
    Book(
      "انشورنس سے ملنے والی رقم سے حج کرنا",
      "انشورنس پالیسی لینا سود اور جوا ہونے کی وجہ سے جائز نہیں ہے، پس اگر کسی نے پالیسی لے لی ہو تو اسے چاہیے  کہ جلد از جلد اسے ختم کردے اور جو  رقم جمع کراچکا ہے صرف اتنی ہی رقم واپس لے لے، زائد رقم سود ہونے کی وجہ سے لینا جائز نہیں، اور اگر کسی نے زائد رقم لے لی ہو تو زائد رقم ثواب کی نیت کے بغیر صدقہ کرنا ضروری ہوگا۔ فقط واللہ اعلم",
      "4.14",
      "assets/Islamic_Books/Urdu/Fathwa/انشورنس سے ملنے والی رقم سے حج کرنا.png",
      "assets/Islamic_Books/Urdu/Fathwa/انشورنس سے ملنے والی رقم سے حج کرنا.pdf",
      false
    ),
    Book(
      "عدت میں پردے کے احکام",
      "سوال : کیا فرماتے ہیں عُلمائے کرام اس بارے میں کہ اگرکسی عورت کے شوہر کا انتقال ہوجائے تواسے اپنی عدت کے دوران کن لوگوں سے پردہ کرنا ضروری ہے اور کن سے نہیں؟ نیز اس دوران بھتیجوں بھانجوں یعنی سگے بھائی اور بہنوں کے بچّوں سے بھی پردہ کرنا لازم ہے یا نہیں؟ اسی طرح داماد سے پردہ ہے یا نہیں؟ بعض لوگ یہ بھی سمجھتے ہیں کہ عدتِ وفات میں آسمان سےبھی پردہ ہے ، کیایہ درست ہے؟",
      "4.14",
      "assets/Islamic_Books/Urdu/Fathwa/عدت میں پردے کے احکام.png",
      "assets/Islamic_Books/Urdu/Fathwa/عدت میں پردے کے احکام.pdf",
      false
    ),    
  ];
}

List<Book> getArabicFathwaBookList(){
  return <Book>[  
    Book(
      "انشورنس سے ملنے والی رقم سے حج کرنا",
      "انشورنس پالیسی لینا سود اور جوا ہونے کی وجہ سے جائز نہیں ہے، پس اگر کسی نے پالیسی لے لی ہو تو اسے چاہیے  کہ جلد از جلد اسے ختم کردے اور جو  رقم جمع کراچکا ہے صرف اتنی ہی رقم واپس لے لے، زائد رقم سود ہونے کی وجہ سے لینا جائز نہیں، اور اگر کسی نے زائد رقم لے لی ہو تو زائد رقم ثواب کی نیت کے بغیر صدقہ کرنا ضروری ہوگا۔ فقط واللہ اعلم",
      "4.14",
      "assets/Islamic_Books/Urdu/Fathwa/انشورنس سے ملنے والی رقم سے حج کرنا.png",
      "assets/Islamic_Books/Urdu/Fathwa/انشورنس سے ملنے والی رقم سے حج کرنا.pdf",
      false
    ),
    Book(
      "عدت میں پردے کے احکام",
      "سوال : کیا فرماتے ہیں عُلمائے کرام اس بارے میں کہ اگرکسی عورت کے شوہر کا انتقال ہوجائے تواسے اپنی عدت کے دوران کن لوگوں سے پردہ کرنا ضروری ہے اور کن سے نہیں؟ نیز اس دوران بھتیجوں بھانجوں یعنی سگے بھائی اور بہنوں کے بچّوں سے بھی پردہ کرنا لازم ہے یا نہیں؟ اسی طرح داماد سے پردہ ہے یا نہیں؟ بعض لوگ یہ بھی سمجھتے ہیں کہ عدتِ وفات میں آسمان سےبھی پردہ ہے ، کیایہ درست ہے؟",
      "4.14",
      "assets/Islamic_Books/Urdu/Fathwa/عدت میں پردے کے احکام.png",
      "assets/Islamic_Books/Urdu/Fathwa/عدت میں پردے کے احکام.pdf",
      false
    ),     
  ];
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  Fathwa book list in all languages

List<Book> getUrduDarsiBookList(){
  return <Book>[  
    Book(
      "MAQASID_AL_FALASIFA",
      "مقاسد الفلاسفة (عربی: مقصد الفلاسفة)، یا فلسفیوں کے مقاصد ابو حمد محمد بن محمد الغزالی نے لکھا تھا۔ Avicenna کے کاموں سے متاثر ہو کر، اس نے فلسفے کے بنیادی نظریات کو پیش کرتے ہوئے یہ کتاب لکھی۔اس کتاب میں، اس نے تفصیل سے بتایا کہ فلسفہ کیا ہے اور بنیادی ہستیوں جیسے فیصلہ، تصور، بنیاد اور منطق کو بیان کیا ہے۔ الغزالی نے کہا کہ فلسفیوں کے افکار کی تردید کرنے سے پہلے ان کے نظریات سے اچھی طرح واقف ہونا چاہیے۔ انہوں نے یہ بھی کہا کہ انہیں فلسفے کی دوسری شاخیں نہیں لگیں جن میں طبیعیات، منطق، فلکیات یا ریاضی شامل ہیں۔مقاصد الفلصیفہ لکھنے کے بعد، اس نے ایک اور کتاب تحفۃ الفلاصیفہ لکھی، جس میں ابتدائی اسلامی فلسفہ کے ایویسینیائی مکتب پر تنقید کی۔",
      "4.14",
      "assets/Islamic_Books/Urdu/Darsi/MAQASID_AL_FALASIFA.png",
      "assets/Islamic_Books/Urdu/Darsi/MAQASID_AL_FALASIFA.pdf",
      false
    ),
        Book(
      "تفسیر الاصول",
      "Taiseer ul Usool Sharh Urdu Tasheel ul Usool By Maulana Muhammad Fuzail Quraishi تیسیر الاصول شرح اردو تسہیل الاصول  ",
      "4.14",
      "assets/Islamic_Books/Urdu/Darsi/تفسیر الاصول.png",
      "assets/Islamic_Books/Urdu/Darsi/تفسیر الاصول.pdf",
      false
    ),
       
  ];
}

List<Book> getPashtoDarsiBookList(){
  return <Book>[  
    Book(
      "MAQASID_AL_FALASIFA",
      "مقاسد الفلاسفة (عربی: مقصد الفلاسفة)، یا فلسفیوں کے مقاصد ابو حمد محمد بن محمد الغزالی نے لکھا تھا۔ Avicenna کے کاموں سے متاثر ہو کر، اس نے فلسفے کے بنیادی نظریات کو پیش کرتے ہوئے یہ کتاب لکھی۔اس کتاب میں، اس نے تفصیل سے بتایا کہ فلسفہ کیا ہے اور بنیادی ہستیوں جیسے فیصلہ، تصور، بنیاد اور منطق کو بیان کیا ہے۔ الغزالی نے کہا کہ فلسفیوں کے افکار کی تردید کرنے سے پہلے ان کے نظریات سے اچھی طرح واقف ہونا چاہیے۔ انہوں نے یہ بھی کہا کہ انہیں فلسفے کی دوسری شاخیں نہیں لگیں جن میں طبیعیات، منطق، فلکیات یا ریاضی شامل ہیں۔مقاصد الفلصیفہ لکھنے کے بعد، اس نے ایک اور کتاب تحفۃ الفلاصیفہ لکھی، جس میں ابتدائی اسلامی فلسفہ کے ایویسینیائی مکتب پر تنقید کی۔",
      "4.14",
      "assets/Islamic_Books/Urdu/Darsi/MAQASID_AL_FALASIFA.png",
      "assets/Islamic_Books/Urdu/Darsi/MAQASID_AL_FALASIFA.pdf",
      false
    ),   
  ];
}

List<Book> getEnglishDarsiBookList(){
  return <Book>[  
    Book(
      "MAQASID_AL_FALASIFA",
      "مقاسد الفلاسفة (عربی: مقصد الفلاسفة)، یا فلسفیوں کے مقاصد ابو حمد محمد بن محمد الغزالی نے لکھا تھا۔ Avicenna کے کاموں سے متاثر ہو کر، اس نے فلسفے کے بنیادی نظریات کو پیش کرتے ہوئے یہ کتاب لکھی۔اس کتاب میں، اس نے تفصیل سے بتایا کہ فلسفہ کیا ہے اور بنیادی ہستیوں جیسے فیصلہ، تصور، بنیاد اور منطق کو بیان کیا ہے۔ الغزالی نے کہا کہ فلسفیوں کے افکار کی تردید کرنے سے پہلے ان کے نظریات سے اچھی طرح واقف ہونا چاہیے۔ انہوں نے یہ بھی کہا کہ انہیں فلسفے کی دوسری شاخیں نہیں لگیں جن میں طبیعیات، منطق، فلکیات یا ریاضی شامل ہیں۔مقاصد الفلصیفہ لکھنے کے بعد، اس نے ایک اور کتاب تحفۃ الفلاصیفہ لکھی، جس میں ابتدائی اسلامی فلسفہ کے ایویسینیائی مکتب پر تنقید کی۔",
      "4.14",
      "assets/Islamic_Books/Urdu/Darsi/MAQASID_AL_FALASIFA.png",
      "assets/Islamic_Books/Urdu/Darsi/MAQASID_AL_FALASIFA.pdf",
      false
    ), 
  ];
}

List<Book> getArabicDarsiBookList(){
  return <Book>[  
    Book(
      "MAQASID_AL_FALASIFA",
      "مقاسد الفلاسفة (عربی: مقصد الفلاسفة)، یا فلسفیوں کے مقاصد ابو حمد محمد بن محمد الغزالی نے لکھا تھا۔ Avicenna کے کاموں سے متاثر ہو کر، اس نے فلسفے کے بنیادی نظریات کو پیش کرتے ہوئے یہ کتاب لکھی۔اس کتاب میں، اس نے تفصیل سے بتایا کہ فلسفہ کیا ہے اور بنیادی ہستیوں جیسے فیصلہ، تصور، بنیاد اور منطق کو بیان کیا ہے۔ الغزالی نے کہا کہ فلسفیوں کے افکار کی تردید کرنے سے پہلے ان کے نظریات سے اچھی طرح واقف ہونا چاہیے۔ انہوں نے یہ بھی کہا کہ انہیں فلسفے کی دوسری شاخیں نہیں لگیں جن میں طبیعیات، منطق، فلکیات یا ریاضی شامل ہیں۔مقاصد الفلصیفہ لکھنے کے بعد، اس نے ایک اور کتاب تحفۃ الفلاصیفہ لکھی، جس میں ابتدائی اسلامی فلسفہ کے ایویسینیائی مکتب پر تنقید کی۔",
      "4.14",
      "assets/Islamic_Books/Urdu/Darsi/MAQASID_AL_FALASIFA.png",
      "assets/Islamic_Books/Urdu/Darsi/MAQASID_AL_FALASIFA.pdf",
      false
    ),   
  ];
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  Motivational book list in all languages

List<Book> getMotivationalBookList(){
  return <Book>[  
                  Book(
      "Motivation\nby Opsahl.R, Dunnette. M.",
      "High performance is achieved by well-motivated people who are prepared to exercise discretionary effort. Even in fairly basic roles, Hunter et al (1990) found that the difference in valueadded discretionary performance between ‘superior’ and ‘standard’ performers was 19 percent. For highly complex jobs it was 48 per cent.",      
      "4.64",
      "assets/Motivational_Book/09. Motivation author Opsahl.R, Dunnette. M.png",
      "assets/Motivational_Book/09. Motivation author Opsahl.R, Dunnette. M.pdf",
      false
    ),
     Book(
      "How to Motivate Yourself and Others",
      "To achieve goals, individuals and organizations must understand how to effectively"
      "Motivate themselves and others. We review three broad strategies that people employ to increase motivation: giving feedback, setting goal targets, and applying incentives.Although each of these strategies can effectively motivate action under certain circumstances and among certain people, they can also result in unintended consequences: not helping or even hurting motivation. For example, employers may give positive feedback that leads employees to relax their effort or negative feedback that undermines employees’ commitment, organizations may set goals that are overly ambitious and consequently reduce motivation, and certain incentives might appear attractive before pursuing an action but uncertain incentives better motivate action during goal pursuit. By identifying when and how these common motivational strategies work versus fail, we are able to prescribe a specific set of guidelines that will help people understand how to motivate themselves and others.",
      "4.14",
      "assets/Motivational_Book/10. How to Motivate Yourself and Others_ Intended and Unintended Consequences author Juliana Schroeder, Ayelet Fishbach.png",
      "assets/Motivational_Book/10. How to Motivate Yourself and Others_ Intended and Unintended Consequences author Juliana Schroeder, Ayelet Fishbach.pdf",
      false
    ),
    Book(
      "The effects of motivation\nin education.",
      "Definition of motivation is the following “Powering people to achieve high levels of performance and overcoming barriers in order to change”. Motivation is the driver of guidance, control and persistence in human behavior. What strengthens a person's behavior? What guides such behaviors or conducts then in a certain direction? What enhanced or maintained the behavior? It is called motivation. On the importance of motivation, researches have shown that employees with high job motivation show, greater commitment to their job; on the other hand Workers who feel more commitment even when things are not moving forward according to the procedure , minimize the impact of this problem ",
     "4.14",
      "assets/Motivational_Book/04. The effects of motivation in education author Hamid Tohidi, Mohammad Jabbari.png",
      "assets/Motivational_Book/04. The effects of motivation in education author Hamid Tohidi, Mohammad Jabbari.pdf",
      false
    ),
        Book(
      "Fundamentals of Motivation\nand Motivational Techniques.",
      "Motivating another person to accomplish a given task is a challenge no matter what your occupation. Motivating a person in the Army to accomplish a mission is particularly challenging when the task is physically hazardous or especially disagreeable. Getting soldiers to move forward under intense fire and to risk their lives so that a unit may succeed is important for leaders. Leaders must help soldiers overcome their fears and instill in them the will to succeed. Motivating soldiers requires leaders to be especially proficient in the competencies of communications, supervision, teaching and counseling, soldier team development and decision making.",
      "4.14",
      "assets/Motivational_Book/05. Fundamentals of Motivation and Motivational Techniques author Minnesota Wing Civil Air Patrol.png",
      "assets/Motivational_Book/05. Fundamentals of Motivation and Motivational Techniques author Minnesota Wing Civil Air Patrol.pdf",
      false
    ),
            Book(
      "Motivation author Basic\nKnowledge 101",
      "Motivation is a theoretical construct used to explain behavior. It represents the reasons for people’s actions, desires, and needs. Motivation can also be defined as one’s direction to behavior, or what causes a person to want to repeat a behavior and vice versa.[1] A motive is what prompts the person to act in a certain way, or at least develop an inclination for specific behavior.",
      "4.14",
      "assets/Motivational_Book/08. Motivation author Basic Knowledge 101.png",
      "assets/Motivational_Book/08. Motivation author Basic Knowledge 101.pdf",
      false
    ),
   
 
   
  ];
}