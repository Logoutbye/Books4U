import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

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
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text("Submit your File"),
          backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(8)),
                      padding: EdgeInsets.all(8),
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
                      height: 2,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(8)),
                      padding: EdgeInsets.all(8),
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
                      height: 2,
                    ),
                    if (pickedFile != null)
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 1),
                              borderRadius: BorderRadius.circular(8)),
                          padding: EdgeInsets.all(8),
                          child: Text(pickedFile!.name)),
                    SizedBox(height: 10),
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
                                    color: Colors.yellow,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.black)),
                        height: MediaQuery.of(context).size.height / 8,
                        width: MediaQuery.of(context).size.width / 5,
                      ),
                    ),
                    SizedBox(
                      height: 10,
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
                                    color: Colors.yellow,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.black)),
                        height: MediaQuery.of(context).size.height / 8,
                        width: MediaQuery.of(context).size.width / 5,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
