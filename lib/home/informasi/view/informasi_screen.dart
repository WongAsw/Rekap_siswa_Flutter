import 'package:absensi_siswa/utils/my_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class InformasiPage extends StatefulWidget {
  @override
  _InformasiPageState createState() => _InformasiPageState();
}

class _InformasiPageState extends State<InformasiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(backButton: true, title: museoText('Informasi Sekolah')),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10),
                  child: cardIformasi(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
