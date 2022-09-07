import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class ListDonePage extends StatelessWidget {
  ListDonePage({Key? key}) : super(key: key);
  final fb = FirebaseDatabase.instance;
  final databaseRef = FirebaseDatabase.instance.reference();

  @override
  Widget build(BuildContext context) {
    final ref = fb.ref().child('jadwal').orderByChild('date').equalTo(DateFormat('dd/MM/yyyy').format(DateTime.now()).toString());
    return Scaffold(
      body: FirebaseAnimatedList(
          query: ref,
          itemBuilder: (BuildContext context, DataSnapshot snapshot, Animation<double> animation, int index) {
            return InkWell(
              child: Padding(
                padding: EdgeInsets.only(top: 0),
                child: Column(
                  children: <Widget>[
                    snapshot.child('status').value.toString() == 'true' ?
                    ListTile(
                      title: Text(snapshot.child('instansi').value.toString() + " - " + snapshot.child('penanggungJawab').value.toString(),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(snapshot.child('alamat').value.toString()),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/building_icon.png"),
                      ),
                      trailing: new Wrap(
                        children: <Widget>[
                          new Container(
                            child: new IconButton(
                              icon: new Icon(Icons.highlight_off, color: Colors.orange),
                              onPressed: () {
                                var key = snapshot.key;
                                DatabaseReference up = FirebaseDatabase.instance.ref("jadwal/$key");
                                up.update({
                                  "status": false,
                                });
                              },
                            ),
                          ),
                          new Container(
                            child: new IconButton(
                              icon: new Icon(Icons.done_outline_outlined, color: Colors.green),
                              onPressed: () {
                                databaseRef.child("aktivitas").push().set({
                                  'instansi': snapshot.child('instansi').value.toString(),
                                  'penanggungJawab': snapshot.child('penanggungJawab').value.toString(),
                                  'alamat': snapshot.child('alamat').value.toString(),
                                  'tanggalPengambilan': DateFormat('dd/MM/yyyy').format(DateTime.now()).toString(),
                                  'waktuPengambilan': DateFormat('hh:mm').format(DateTime.now()).toString(),
                                  'petugas' : 'petugas'
                                });
                                var key = snapshot.key;
                                var jarakPengambilan = snapshot.child('jarakPengambilan').value.toString();
                                DatabaseReference up = FirebaseDatabase.instance.ref("jadwal/$key");
                                up.update({
                                  "date" : DateFormat('dd/MM/yyyy').format(DateTime.now().add(Duration(days: int.parse(jarakPengambilan)))),
                                  "status": false,
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    )
                    :
                Container()
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}