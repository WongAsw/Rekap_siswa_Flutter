import 'package:absensi_siswa/utils/my_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

cardIformasi() {
  return Container(
    height: 200,
    child: Card(
      elevation: 4.0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
//          side: BorderSide(color: vBlue2, width: 2.0)
      ),
      child: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: cardTanggal(tgl: '12 Desember 2020'),
              ),
              Padding(
                padding: EdgeInsets.all(12),
                child: museoText('Judul'),
              ),
              Padding(
                padding: EdgeInsets.only(left: 12, bottom: 12),
                child: museoText('Sub Judul'),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

cardTanggal({tgl}) {
  return Container(
    height: 30,
    child: Card(
      elevation: 4.0,
      color: Colors.lightBlue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
//          side: BorderSide(color: vBlue2, width: 2.0)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 5),
        child: museoText(tgl,
            fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
      ),
    ),
  );
}
