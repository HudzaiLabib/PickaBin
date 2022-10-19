import 'package:boilerplate/constants/colors.dart';
import 'package:boilerplate/ui/help/petugas_acara_tutorial.dart';
import 'package:boilerplate/ui/help/petugas_schedule_tutorial.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/ui/help/koordinator_laporan_tutorial.dart';
import 'package:boilerplate/ui/help/koordinator_schedule_tutorial.dart';

class HelpPetugas extends StatelessWidget {
  const HelpPetugas({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.green),
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Bingung ?",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 5),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Yuk pelajari fitur kami!",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PetugasAcaraTutorial()));
                },
                child: Container(
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/tutorial1.png"),
                      fit: BoxFit.cover,
                    ),
                    border:
                        Border.all(width: 2, color: AppColors.borderTutorial),
                    borderRadius: BorderRadius.circular(12),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Color.fromARGB(255, 122, 122, 122),
                    //     spreadRadius: 1,
                    //     blurRadius: 1,
                    //     offset: Offset(0, 1), // changes position of shadow
                    //   )
                    // ],
                  ),
                  child: Row(children: [
                    Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 15, top: 10),
                              child: Row(children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Laporan Acara",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Deskripsi singkat tentang fitur",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          0.05,
                                      top: 12),
                                  child: Icon(
                                    Icons.arrow_circle_right_outlined,
                                    size: 28,
                                    color: Colors.black,
                                  ),
                                )
                              ]),
                            ),
                          ],
                        ))
                  ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PetugasScheduleTutorial()));
                },
                child: Container(
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/tutorial2.png"),
                      fit: BoxFit.cover,
                    ),
                    border:
                        Border.all(width: 2, color: AppColors.borderTutorial),
                    borderRadius: BorderRadius.circular(12),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Color.fromARGB(255, 122, 122, 122),
                    //     spreadRadius: 1,
                    //     blurRadius: 1,
                    //     offset: Offset(0, 1), // changes position of shadow
                    //   )
                    // ],
                  ),
                  child: Row(children: [
                    Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 15, top: 10),
                              child: Row(children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Schedule",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Deskripsi singkat tentang fitur",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          0.05,
                                      top: 12),
                                  child: Icon(
                                    Icons.arrow_circle_right_outlined,
                                    size: 28,
                                    color: Colors.black,
                                  ),
                                )
                              ]),
                            ),
                          ],
                        ))
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
