import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Age_cal_1(),
  ));
}

class Age_cal_1 extends StatefulWidget {
  const Age_cal_1({super.key});

  @override
  State<Age_cal_1> createState() => _Age_cal_1State();
}

class _Age_cal_1State extends State<Age_cal_1> {
  var i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To-Do App"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange.shade500,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: List.generate(
                      i,
                      (index) => Container(
                        height: 56,
                        margin: const EdgeInsets.all(6.5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          border: Border.all(color: Colors.grey, width: 2),
                        ),
                        child: Center(
                          child: Text(
                            (index < 3)
                                ? ("${index + 9}:00\nAM")
                                : ((index == 3)
                                    ? ("${index + 9}:00\nPM")
                                    : ("${index - 3}:00\nPM")),
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 11,
                  child: Column(
                    children: List.generate(
                      i,
                      (index) => Container(
                        margin: const EdgeInsets.all(5),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Enter your To-Do here.......",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                                width: 2.5,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2),
                              borderSide: const BorderSide(
                                color: Colors.red,
                                width: 2.5,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange.shade900,
        onPressed: () {
          setState(() {
            if (i < 12) {
              i++;
            }
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
