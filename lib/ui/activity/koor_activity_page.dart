import 'package:boilerplate/controllers/aktivitas_koor_controller.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../data/service/auth_service.dart';

class KoorActivityPage extends StatefulWidget {
  KoorActivityPage({Key? key}) : super(key: key);

  @override
  State<KoorActivityPage> createState() => _KoorActivityPageState();
}

class _KoorActivityPageState extends State<KoorActivityPage> {
  // final ref = FirebaseDatabase.instance.ref().child('aktivitas_warga');

  // final data = FirebaseDatabase.instance.ref().child('aktivitas').child('penanggungJawab');
  AuthService authService = AuthService();

  //check empty list realtime database
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Aktivitas',
          style: TextStyle(color: Color(0xff00783E)),
        ),
        automaticallyImplyLeading: false,
        leadingWidth: 100,
      ),
      body: FutureBuilder(
          future: AktivitasKoorController().getAktivitasKoor(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return snapshot.data.length != 0 ? ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: <Widget>[
                      // snapshot.child('penanggungJawab').value.toString() == 'null' ?
                      Dismissible(
                        key: Key(index.toString()),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          color: Colors.red,
                          child: Text("Hapus",
                              style: TextStyle(color: Colors.white)),
                          alignment: Alignment.centerRight,
                          padding: EdgeInsets.only(right: 20),
                        ),
                        confirmDismiss: (direction) {
                          return showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text("Konfirmasi"),
                                  content: Text(
                                      "Apakah Anda yakin akan menghapus aktivitas ini? "),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text("Tidak")),
                                    TextButton(
                                        onPressed: () {
                                          var key = snapshot.data[index].id;
                                          AktivitasKoorController
                                              .deleteAktivitasKoor(key);
                                              setState(() {
                                                Navigator.of(context).pop();
                                              });
                                        },
                                        child: Text("Yakin")),
                                  ],
                                );
                              });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: ListTile(
                            title: Text.rich(
                              TextSpan(
                                children: <InlineSpan>[
                                  TextSpan(
                                    text: 'Lantai telah dibersihkan',
                                  ),
                                ],
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            subtitle: Text.rich(
                              TextSpan(
                                children: <InlineSpan>[
                                  WidgetSpan(
                                      child: Icon(Icons.location_on,
                                          color: Colors.green)),
                                  TextSpan(
                                    text: "Area " +
                                        snapshot.data[index].jadwal.cleanArea,
                                  ),
                                ],
                              ),
                            ),
                            trailing: Column(children: <Widget>[
                              DateFormat('yyyy-MM-dd').format(DateTime.parse(
                                          snapshot.data[index].date
                                              .toString())) ==
                                      DateFormat('yyyy-MM-dd')
                                          .format(DateTime.now())
                                  ? Text(
                                    DateFormat('HH:mm').format(
                                      DateTime.parse(snapshot.data[index].time
                                              .toString())
                                      ).toString(),
                                      style: TextStyle(color: Colors.grey))
                                  : DateFormat('yyyy-MM-dd').format(DateTime.parse(
                                          snapshot.data[index].date
                                              .toString())) ==
                                          DateFormat('yyyy-MM-dd').format(
                                              DateTime.now()
                                                  .subtract(Duration(days: 1)))
                                      ? Text("Yesterday",
                                          style: TextStyle(color: Colors.grey))
                                      : Text(
                                          DateFormat('yyyy-MM-dd').format(
                                              DateTime.parse(snapshot.data[index].date.toString())),
                                          style: TextStyle(color: Colors.grey)),
                              SizedBox(height: 15),
                              Wrap(
                                children: <Widget>[
                                  Icon(Icons.arrow_back),
                                ],
                              ),
                            ]),
                            leading: CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/activity_icon.png"),
                              backgroundColor: Colors.green,
                            ),
                          ),
                        ),
                      )
                      // : Center(
                      //   child: Text("Tidak ada aktivitas"),
                      // )
                      ,
                      Divider(color: Colors.black)
                    ],
                  );
                },
              ): Center(
                child: Text("Tidak ada aktivitas"),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }

}
