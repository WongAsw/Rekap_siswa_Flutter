import 'package:absensi_siswa/utils/constant.dart';
import 'package:absensi_siswa/utils/my_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(176),
            child: appBar(backButton: false),
          ),
          body: _itemBody(),
        ),
      ],
    );
  }

  _itemBody() {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Container(
            margin: const EdgeInsets.only(top: 44.0),
            child: ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                Card(
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Form(
                      child: Column(
                        children: <Widget>[
                          museoText('LOGIN'),
                          SizedBox(height: 30.0),
                          TextFormField(
                            keyboardType: TextInputType.phone,
                            textInputAction: TextInputAction.next,
                            onFieldSubmitted: (term) {
                              // fieldFocusChange(context, _nohpFocus, _passFocus);
                            },
                            // focusNode: _nohpFocus,
                            decoration: InputDecoration(
                              // prefixIcon: _labelPhone(),
                              // fillColor: vBoxDecoration,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              labelText: ' No Handphone',
                            ),
                            // validator: (v) => _validateNoHP(v),
                            // onSaved: (v) => data["username"] = v, // '+62$v' login gak pake  +62
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: 100.0,
            height: 100.0,
            color: Colors.transparent,
            child: Card(
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100.0 / 2),
              ),
              child: CircleAvatar(
                backgroundColor: vOrange,
                // child: userImage != null
                //     ? Image.network(userImage)
                //     : Image.asset('assets/images/group-681.png'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
