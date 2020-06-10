
import 'package:absensi_siswa/home/absensi/view/absensi_screen.dart';
import 'package:absensi_siswa/home/informasi/view/informasi_screen.dart';
import 'package:flutter/material.dart';

goToAbsensi(context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => AbsensiPage(),
    ),
  );
}

goToInformasi(context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => InformasiPage(),
    ),
  );
}
