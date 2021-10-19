import 'dart:convert';
import 'dart:io';
import 'package:examp/models/api_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  double qiymat = 15.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/fon.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
              child: Text(
                "Contents",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 150.0,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.wb_sunny),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(CupertinoIcons.moon),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 150.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {
                              if (qiymat > 10.0) {
                                qiymat = (qiymat + 1);
                                setState(() {});
                              }
                            },
                            icon: const Icon(
                              CupertinoIcons.add,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              if (qiymat < 30) {
                                qiymat = (qiymat -1);
                                setState(() {
                                  
                                });
                              }
                            },
                            icon: const Icon(
                              CupertinoIcons.minus,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: EdgeInsets.all(15),
                child: FutureBuilder(
                  future: _getData(),
                  builder: (context, AsyncSnapshot<List<News>> snap) {
                    var data = snap.data;
                    return snap.hasData
                        ? ListView.builder(itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                data![index].name.toString(),
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: qiymat,
                                ),
                              ),
                            );
                          })
                        : const Center(
                            child: CupertinoActivityIndicator(),
                          );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<List<News>> _getData() async {
    Uri url = Uri.parse("https://jsonplaceholder.typicode.com/comments");

    var res = await http.get(url);
    if (res.statusCode == 200) {
      return (jsonDecode(res.body) as List)
          .map((e) => News.fromJson(e))
          .toList();
    } else {
      throw Exception("Xato bor ${res.statusCode}");
    }
  }
}
