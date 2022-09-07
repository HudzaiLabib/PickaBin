import 'package:flutter/material.dart';

class ErrorConnection extends StatefulWidget {
  const ErrorConnection({Key? key}) : super(key: key);

  @override
  _ErrorConnectionState createState() => _ErrorConnectionState();
}

class _ErrorConnectionState extends State<ErrorConnection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(90),
        color: Colors.white,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 2,
          ),
          Container(
            height: 5,
            width: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 122, 122, 122),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 1), // changes position of shadow
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Align(
                    alignment: Alignment.center,
                    child: Image.asset('assets/images/error_connection.jpg',
                    width: 200, height: 200,)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Koneksi Anda Terputus :(",
                      style: TextStyle(fontSize: 16.25, color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 7),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Periksa koneksi internet atau Wi-Fi Anda dan coba lagi",
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: 160.0,
                            child: OutlinedButton(
                              onPressed: () {
                                // Respond to button press
                              },
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                    ),
                                  ),
                              ),
                              child: Text('Settings'),
                            ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: 160.0,
                          child: ElevatedButton(
                            onPressed: () {
                              // Respond to button press
                            },
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                )
                            ),
                            child: Text('Coba Lagi'),
                          ),
                        ),
                      ],
                    )
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
