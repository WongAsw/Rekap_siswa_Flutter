import 'package:absensi_siswa/home/models/data_siswa.dart';
import 'package:absensi_siswa/utils/constant.dart';
import 'package:absensi_siswa/utils/my_widget.dart';
import 'package:flutter/material.dart';

// ignore: unused_element
absenCard({nama, noinduk}) {
  return Card(
      elevation: 4.0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
//          side: BorderSide(color: vBlue2, width: 2.0)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25.5,
          vertical: 13.5,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                museoText(
                  nama,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                SizedBox(width: 14.0),
                museoText(
                  noinduk,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
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
      ));
}
