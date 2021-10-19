import 'package:examp/screens/second_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.cyan,
          image: DecorationImage(
            image: AssetImage(
              "assets/images/fon.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 90, 20, 0),
              child: Text(
                "News",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 300.0,
                    width: 350.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.red,
                      image: const DecorationImage(
                        image: AssetImage(
                          "assets/images/news.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            const Positioned(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Watching more contents",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30.0),
            const Icon(
              Icons.arrow_downward,
              size: 40.0,
              color: Colors.white,
            ),
            const SizedBox(height: 30.0),
            Positioned(
                child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                fixedSize: const Size(180.0, 50.0),
                primary: Colors.yellowAccent,
              ),
              child: const Text(
                "Contents",
                style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondPage()));
              },
            )),
          ],
        ),
      ),
    );
  }
}
