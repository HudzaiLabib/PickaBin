import 'package:boilerplate/data/service/auth_service.dart';
import 'package:boilerplate/ui/profile/profile_petugas.dart';
//import 'package:boilerplate/ui/update_profile/update_petugas_page.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilePetugasMain extends StatefulWidget {
  const ProfilePetugasMain({Key? key}) : super(key: key);

  @override
  State<ProfilePetugasMain> createState() => _ProfilePetugasMainState();
}

class _ProfilePetugasMainState extends State<ProfilePetugasMain> {
  //Read data once from Realtime Database
  final ref = FirebaseDatabase.instance.ref().child('petugas');
  AuthService authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: const Text(
              'Profile Saya',
              style: TextStyle(color: Color(0xff00783E)),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/profile.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Budi',
                            style:
                                TextStyle(fontSize: 17, color: Colors.black)),
                        Padding(
                          padding: const EdgeInsets.only(top: 2.5),
                          child: Text(
                            '+6287752653762',
                            style: TextStyle(
                                color: Color.fromARGB(255, 57, 57, 57),
                                fontSize: 12.0,
                                letterSpacing: 0.5,
                                wordSpacing: 1),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2.5),
                          child: Text(
                            'Buditampan@gmail.com',
                            style: TextStyle(
                                color: Color.fromARGB(255, 57, 57, 57),
                                fontSize: 12.0,
                                letterSpacing: 0.5,
                                wordSpacing: 1),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 77),
                      child: Icon(Icons.edit)),
                ],
              ),
              Container(
                margin: new EdgeInsets.only(top: 5.0, right: 86.0),
                width: 87,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 22, 22, 22),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 5,
                    bottom: 5,
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 10.0,
                        backgroundColor: Color.fromARGB(255, 239, 240, 238),
                        child: Icon(
                          Icons.star_rounded,
                          color: Colors.green,
                          size: 19.0,
                        ),
                      ),
                      Text(
                        " Premium",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 10.0),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: new EdgeInsets.only(top: 12.0, right: 7, left: 3),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 10, left: 10, top: 5, bottom: 5),
                      child: Text(
                        "Akun Anda sudah terverifikasi, jadi lebih aman.",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 10.0),
                      ),
                    ),
                    SizedBox(
                        width: 100,
                        height: 20,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Periksa'),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.black38,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ))))
                  ],
                ),
                width: 340,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text("Akun",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ),
              Column(
                children: [
                  Container(
                    height: 35.0,
                    child: ListTile(
                      leading: Icon(
                        Icons.book_rounded,
                      ),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                      title: const Text('Aktivitas'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfilePetugasPage()));
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70.0),
                    child: Divider(thickness: 1, color: Colors.black),
                  ),
                  Container(
                    height: 35.0,
                    child: ListTile(
                      leading: Icon(
                        Icons.book_rounded,
                      ),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                      title: const Text('Aktivitas'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfilePetugasPage()));
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70.0),
                    child: Divider(thickness: 1, color: Colors.black),
                  ),
                  Container(
                    height: 35.0,
                    child: ListTile(
                      leading: Icon(
                        Icons.book_rounded,
                      ),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                      title: const Text('Aktivitas'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfilePetugasPage()));
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70.0),
                    child: Divider(thickness: 1, color: Colors.black),
                  ),
                  Container(
                    height: 35.0,
                    child: ListTile(
                      leading: Icon(
                        Icons.book_rounded,
                      ),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                      title: const Text('Aktivitas'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfilePetugasPage()));
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70.0),
                    child: Divider(thickness: 1, color: Colors.black),
                  ),
                  Container(
                    height: 35.0,
                    child: ListTile(
                      leading: Icon(
                        Icons.book_rounded,
                      ),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                      title: const Text('Aktivitas'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfilePetugasPage()));
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70.0),
                    child: Divider(thickness: 1, color: Colors.black),
                  ),
                  Container(
                    height: 35.0,
                    child: ListTile(
                      leading: Icon(
                        Icons.book_rounded,
                      ),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                      title: const Text('Aktivitas'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfilePetugasPage()));
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70.0),
                    child: Divider(thickness: 1, color: Colors.black),
                  ),
                  Container(
                    height: 35.0,
                    child: ListTile(
                      leading: Icon(
                        Icons.book_rounded,
                      ),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                      title: const Text('Aktivitas'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfilePetugasPage()));
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70.0),
                    child: Divider(thickness: 1, color: Colors.black),
                  ),
                  Container(
                    height: 35.0,
                    child: ListTile(
                      leading: Icon(
                        Icons.book_rounded,
                      ),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                      title: const Text('Aktivitas'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfilePetugasPage()));
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70.0),
                    child: Divider(thickness: 1, color: Colors.black),
                  ),
                  Container(
                    height: 35.0,
                    child: ListTile(
                      leading: Icon(
                        Icons.book_rounded,
                      ),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                      title: const Text('Aktivitas'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfilePetugasPage()));
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70.0),
                    child: Divider(thickness: 1, color: Colors.black),
                  ),
                  Container(
                    height: 35.0,
                    child: ListTile(
                      leading: Icon(
                        Icons.book_rounded,
                      ),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                      title: const Text('Aktivitas'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfilePetugasPage()));
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70.0),
                    child: Divider(thickness: 1, color: Colors.black),
                  ),
                  Container(
                    height: 35.0,
                    child: ListTile(
                      leading: Icon(
                        Icons.book_rounded,
                      ),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                      title: const Text('Aktivitas'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfilePetugasPage()));
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70.0),
                    child: Divider(thickness: 1, color: Colors.black),
                  ),
                  Container(
                    height: 35.0,
                    child: ListTile(
                      leading: Icon(
                        Icons.book_rounded,
                      ),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                      title: const Text('Aktivitas'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfilePetugasPage()));
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70.0),
                    child: Divider(thickness: 1, color: Colors.black),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

Future<String?> _getPrefs() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? email = prefs.getString('email');
  return email;
}