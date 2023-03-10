import 'package:absensi_siswa/home/absensi/view/absensi_card.dart';
import 'package:absensi_siswa/home/models/data_siswa.dart';
import 'package:absensi_siswa/utils/constant.dart';
import 'package:absensi_siswa/utils/my_widget.dart';
import 'package:flutter/material.dart';

class AbsensiPage extends StatefulWidget {
  @override
  _AbsensiPageState createState() => _AbsensiPageState();
}

class _AbsensiPageState extends State<AbsensiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: 176,
                child:
                    appBar(backButton: true, title: museoText('Absensi Siswa')),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: dataSiswa.length,
                      itemBuilder: (context, index) {
                        return absenCard(
                          nama: dataSiswa[index]['name'],
                          noinduk: dataSiswa[index]['noInduk'],
                        );
                      })),
            ],
          ),
          Column(
//            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 80),
              museoText('Real Time',
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w500),
              SizedBox(height: 20),
              _item(),
              SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }

  _item() {
    return Row(
      children: <Widget>[
        Expanded(
          child: cardAbsensi(
            title: 'Mapel',
          ),
        ),
        SizedBox(width: 15),
        Expanded(
          child: cardAbsensi(
            title: 'XII IPA',
          ),
        ),
      ],
    );
  }
}
