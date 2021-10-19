import 'package:examp/screens/first_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NewsPage(),
    );
  }
}

// Repo bilan local folderni ulash
// git init #gitni inishialayz git ishlashi uchun filelarni qo'shib beradi
// git add . #barcha filelarni qo'shadi . => all  |   git add somefilename
// git commit -m "uploaded files" #o'zgarishlar haqida yozamiz
// git remote add origin github repo link #qaysi repoga yuklashimizni belgilaymiz
// git push -u -f origin main #github repoga upload qilamiz

// // Github Repodan o'zgarishlarni local filega olish
// git pull  # git pull github repo link

// // O'zgartirish kiritish
// git add . 
// git commit -m "" #o'zgarishga tarif yozadi
// git push -u -f origin main // o'zgarishlarni upload qilamiz


















