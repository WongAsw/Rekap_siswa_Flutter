import 'package:absensi_siswa/utils/my_widget.dart';
import 'package:absensi_siswa/utils/route.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: 176,
            child: appBar(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 70),
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: museoText('Selamat Pagi ',
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 20),
              item(),
            ],
          ),
        ],
      ),
    );
  }

  item() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Align(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: cardHome(
                    onTap: () => goToAbsensi(context),
                    title: 'Absensi',
                    Icon: 'absensi.png',
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: cardHome(
                    onTap: () => goToInformasi(context),
                    title: 'Informasi',
                    Icon: 'absensi.png',
                  ),
                ),
              ],
            ),
            SizedBox(width: 20),
            Row(
              children: <Widget>[
                Expanded(
                  child: cardHome(
                    title: 'Rekap',
                    Icon: 'absensi.png',
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: cardHome(
                    title: 'Logout',
                    Icon: 'absensi.png',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
