import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:islamic_book_app/Utility/colors.dart';

// File file = File("");

class Contribution extends StatefulWidget {
  const Contribution({super.key});

  @override
  State<Contribution> createState() => _ContributionState();
}

class _ContributionState extends State<Contribution> {
  PlatformFile? pickedFile;
  Future selectFile() async {
    final result = await FilePicker.platform.pickFiles(type: FileType.any);

    if (result == null) return;
    setState(() {
      pickedFile = result.files.first;
    });
  }

  final GlobalKey<FormState> _formKey = GlobalKey();
  String title = "";
  String description = "";

  void _submit() {
    // you can write your
    // own code according to
    // whatever you want to submit;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.kbgColor,
        appBar: AppBar(
          title: Text(
            "Submit your File",
            style: TextStyle(color: AppColor.kTextColor),
          ),
          backgroundColor: AppColor.kbgColor,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
            ),
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg.jpg'),
              alignment: Alignment.topCenter,
              fit: BoxFit.fill,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(29),
                          color: AppColor.kgreyColor,
                          // border: Border.all(color: Colors.grey)
                        ),
                        padding: EdgeInsets.fromLTRB(16, 8, 8, 8),
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Enter Title of the Book',
                              border: InputBorder.none),
                          keyboardType: TextInputType.name,
                          onFieldSubmitted: (value) {
                            setState(() {
                              title = value;
                            });
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter Tilte of the Book!';
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 25,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(29),
                          color: AppColor.kgreyColor,
                          // border: Border.all(color: Colors.grey)
                        ),
                        padding: EdgeInsets.fromLTRB(16, 8, 8, 8),
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Enter Description',
                              border: InputBorder.none),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter the Description!';
                            }
                          },
                          onFieldSubmitted: (value) {
                            setState(() {
                              description = value;
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 25,
                      ),
                      if (pickedFile != null)
                        Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 1),
                                borderRadius: BorderRadius.circular(29)),
                            padding: EdgeInsets.all(8),
                            child: Text(pickedFile!.name)),
                      InkWell(
                        onTap: () {
                          selectFile();
                        },
                        child: Container(
                          padding: EdgeInsets.all(8),
                          // ignore: sort_child_properties_last
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: Icon(Icons.upload),
                                  iconSize: 50,
                                  onPressed: () {
                                    selectFile();
                                  },
                                ),
                                Text(
                                  "Select",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: AppColor.kTextColor,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(29),
                            color: AppColor.kgreyColor,
                            // border: Border.all(color: Colors.grey)
                          ),
                          height: MediaQuery.of(context).size.height / 8,
                          width: MediaQuery.of(context).size.width / 5,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 25,
                      ),
                      InkWell(
                        onTap: () async {},
                        child: Container(
                          padding: EdgeInsets.all(8),
                          // ignore: sort_child_properties_last
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: Icon(Icons.send),
                                  iconSize: 50,
                                  onPressed: () async {},
                                ),
                                Text(
                                  "Send",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: AppColor.kTextColor,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(29),
                            color: AppColor.kgreyColor,
                            // border: Border.all(color: Colors.grey)
                          ),
                          height: MediaQuery.of(context).size.height / 8,
                          width: MediaQuery.of(context).size.width / 5,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
