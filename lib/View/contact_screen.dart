import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(scaffoldBackgroundColor: Colors.green),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green,
          title: Text("Contact Us"),
          actions: [],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.call),
                      iconSize: 42,
                      onPressed: callNumber,
                    ),
                    Text(
                      "Contact",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border:
                      Border.all(color: Color.fromARGB(255, 255, 255, 255))),
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width / 1.1,
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                alignment: Alignment.center,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(Icons.email),
                        iconSize: 42,
                        onPressed: () async {
                          String email = Uri.encodeComponent(
                              "muhammadbilal03478@gmail.com");
                          String subject =
                              Uri.encodeComponent("Islamic Book App");
                          String body =
                              Uri.encodeComponent("Assalam-o-Alikum !");
                          print(subject); //output: Hello%20Flutter
                          Uri mail = Uri.parse(
                              "mailto:$email?subject=$subject&body=$body");
                          if (await launchUrl(mail)) {
                            //email app opened
                          } else {
                            //email app is not opened
                          }
                        },
                      ),
                      Text(
                        "Mail Us",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border:
                        Border.all(color: Color.fromARGB(255, 255, 255, 255))),
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width / 1.1,
              ),
            ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 32,8),
                child: Align(
                  
                  alignment: Alignment.bottomRight,
                  child: Text("Developed by Team Kawiish",style: TextStyle(fontSize: 22,
                  color: Color.fromARGB(255, 255, 255, 255),
                  ),
)),
              ),
            ],
          )
          ],         
        ),
      ),
    );
  }

  callNumber() async {
    const number = '+92348188144'; //set the number here
    bool? call = await FlutterPhoneDirectCaller.callNumber(number);
  }
}
