import 'package:floating_draggable_widget/floating_draggable_widget.dart';
import 'package:flutter/material.dart';
import 'package:islamic_book_app/Utility/colors.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TasbheeCounter extends StatefulWidget {
  const TasbheeCounter({super.key});

  @override
  State<TasbheeCounter> createState() => _TasbheeCounterState();
}

class _TasbheeCounterState extends State<TasbheeCounter> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  late Future<int> _counter;
  bool isPressed = false;
  Future<void> _incrementCounter() async {
    final SharedPreferences prefs = await _prefs;
    final int counter = (prefs.getInt('counter') ?? 0) + 1;

    setState(() {
      _counter = prefs.setInt('counter', counter).then((bool success) {
        return counter;
      });
    });
  }

  Future<void> _resetCounter() async {
    final SharedPreferences prefs = await _prefs;
    // final counter = prefs.remove('counter');
    final counter = prefs.clear();

    setState(() {
      // _counter = prefs.setInt('counter', 0).then((bool success) {
      _counter = prefs.clear().then((bool) {
        return 0;
      }).onError((error, stackTrace) => _counter);
    });
  }

  @override
  void initState() {
    super.initState();
    _counter = _prefs.then((SharedPreferences prefs) {
      return prefs.getInt('counter') ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingDraggableWidget(
      floatingWidget: FloatingActionButton(
        backgroundColor: AppColor.kbgColor,
        onPressed: () {
          _incrementCounter();
          isPressed = true;
        },
        child: const Icon(
          Icons.add,
          size: 50,
          color: AppColor.kTextColor,
        ),
      ),
      floatingWidgetHeight: 90,
      floatingWidgetWidth: 90,
      dx: 200,
      dy: 300,
      deleteWidgetDecoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.white12, Colors.grey],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [.0, 1],
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      deleteWidget: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 2, color: Colors.black87),
        ),
        child: const Icon(Icons.close, color: Colors.black87),
      ),
      onDeleteWidget: () {
        debugPrint('Widget deleted');
      },
      mainScreenWidget: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Tasbīḥ',
              style: TextStyle(color: AppColor.kTextColor),
            ),
            backgroundColor: AppColor.kbgColor,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: AppColor.kTextColor,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    _resetCounter();
                    isPressed = false;
                  },
                  icon: isPressed
                      ? Icon(
                          (Icons.restore_page),
                          color: AppColor.kTextColor,
                        )
                      : Text(""))
            ],
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
            child: Center(
              child: FutureBuilder<int>(
                  future: _counter,
                  builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
                    // switch (snapshot.connectionState) {
                    // case ConnectionState.waiting:
                    //   return const Text(
                    //     "",
                    //   //   // style: TextStyle(color: Colors.green, fontSize: 50),
                    //   );
                    // default:
                    if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    } else {
                      return Container(
                        decoration: BoxDecoration(
                          color: AppColor.kgreyColor,
                          borderRadius: BorderRadius.circular(29),
                          // border: Border.all(color: Colors.black)
                        ),
                        height: MediaQuery.of(context).size.height / 5,
                        width: MediaQuery.of(context).size.width / 2.5,
                        child: Center(
                          child: Text(
                            ' ${snapshot.data} ${snapshot.data == 1 ? '' : ''}',
                            style: TextStyle(fontSize: 50),
                          ),
                        ),
                      );
                    }
                  }
                  // }
                  ),
            ),
          )),
    );
  }
}
