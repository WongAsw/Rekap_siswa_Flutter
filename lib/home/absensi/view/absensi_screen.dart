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
              SizedBox(height: 30,),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    _item1(
                      name: 'Rifqi Firdaus',
                      noInduk: '173140'
                    )
                  ],
                ),
              ),
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

  _itemAbsensi() {
    return Expanded(
      child: ListView(
      ),
    );
  }
}

_item1({ noInduk, name, source }) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 25.5,
      vertical: 13.5,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
//            Image.asset(
//              'assets/images/person.png',
//              width: 40,
//              height: 40,
//            ),
//            SizedBox(width: 18.0),
            museoText(
              noInduk,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            SizedBox(width: 18.0),
            museoText(
              name,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ],
        ),
        Icon(
          Icons.keyboard_arrow_right,
          size: 25,
          color: vBlue2,
        ),
      ],
    ),
  );
}
