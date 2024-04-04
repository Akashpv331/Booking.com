import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class check_out extends StatefulWidget {
  const check_out({super.key});

  @override
  State<check_out> createState() => _check_outState();
}

class _check_outState extends State<check_out> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 7,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 2,
                      color: Color.fromARGB(255, 225, 214, 214),
                    )),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text("Chech in",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(
                            width: MediaQuery.of(context).size.height / 14,
                          ),
                          Text(":"),
                          SizedBox(
                            width: 10,
                          ),
                          Text("mar/3/2024")
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text("Chech out",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(
                            width: MediaQuery.of(context).size.height / 16,
                          ),
                          Text(":"),
                          SizedBox(
                            width: 10,
                          ),
                          Text("nnnn")
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text("Room ",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(
                            width: MediaQuery.of(context).size.height / 11,
                          ),
                          Text(":")
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
