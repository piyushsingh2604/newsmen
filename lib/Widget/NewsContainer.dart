import 'package:flutter/material.dart';

class NewsContainer extends StatelessWidget {
  String imgUrl;
  String newsHead;
  String newsDec;
  String newsUrl;
  String newsCnt;

  NewsContainer(
      {required this.imgUrl,
      required this.newsDec,
      required this.newsCnt,
      required this.newsHead,
      required this.newsUrl});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                  imgUrl),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      newsHead,
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      newsCnt,
                      style: TextStyle(fontSize: 16, color: Colors.black38),
                    ),
                       SizedBox(
                height: 10,
              ),
                    Text(
                      newsDec,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                      Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ElevatedButton(
                        onPressed: () {
                          print("Goung to $newsUrl");
                        },
                        child: Text("Read More")),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
                  ],
                ),
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}
