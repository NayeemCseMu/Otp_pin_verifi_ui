import 'package:flutter/material.dart';

import 'dart:async';
import 'dart:convert';


class VerificationPage extends StatefulWidget {
  VerificationPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _VerificationPageState createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  int _counter = 0;
  String username = '';

  TextEditingController phone = new TextEditingController();
  TextEditingController user = new TextEditingController();
  TextEditingController pass = new TextEditingController();
  TextEditingController pass2 = new TextEditingController();

  String msg = '';
  var datauser;
//  Future<List> _registration() async {
//    final response =
//        await http.post("https://duare.net/api/registration.php", body: {
//      "name": user.text,
//      "phone": phone.text,
//      "password": pass.text,
//    });
//
//    datauser = json.decode(response.body);
////
////    if(datauser.length==0){
////      setState(() {
////        msg="Login Fail";
////      });
////    }else{
////      if(datauser[0]['level']=='admin'){
////        Navigator.pushReplacementNamed(context, '/AdminPage');
////      }else if(datauser[0]['level']=='member'){
////        Navigator.pushReplacementNamed(context, '/MemberPage');
////      }
////
////      setState(() {
////        username= datauser[0]['username'];
////      });
////
////    }
////
//    return datauser;
//  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                    fit: BoxFit.cover,
                    image: new AssetImage('images/duare.png'))),
          ),
          Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                      child: new Image.asset(
                        'images/duare.png',
                        height: 120,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    child: new Container(
                      padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                      child: new Card(
                        elevation: 8.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(18),
                            topRight: Radius.circular(18),
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                          ),
                        ),
                        margin: EdgeInsets.only(right: 0, left: 0),
                        child: new Column(
                          children: <Widget>[
                            Center(
                              child: Container(
                                alignment: Alignment(-1.0, 0.0),
                                padding: EdgeInsets.fromLTRB(50, 80, 30, 10),
                                child: Text(
                                  'Verificatoin Code',
                                  style: TextStyle(
                                    fontFamily: 'Eina_bold',
                                    fontSize: 36.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                alignment: Alignment(-1.0, 0.0),
                                padding: EdgeInsets.fromLTRB(30, 5, 30, 10),
                                child: Text(
                                  'Please type the verificatoin code sent to',
                                  style: TextStyle(
                                    fontFamily: 'Eina_bold',
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                            Center(

                              child: Container(
                                alignment: Alignment(-1.0, 0.0),
                                padding: EdgeInsets.fromLTRB(30, 0, 30, 50),
                                child: Text(
                                  '+8801714217317',
                                  style: TextStyle(
                                    fontFamily: 'Eina_bold',
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                            Container
                              (
                              margin: EdgeInsets.fromLTRB(70, 0, 70, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[

                                  Expanded(
                                    child: Container(
                                      //color: Colors.white,
                                      padding:
                                      EdgeInsets.fromLTRB(5, 10, 5, 10),
                                      child: TextField(
                                        controller: phone,
                                        maxLength: 1,
                                        keyboardType: TextInputType.number,
                                        decoration: new InputDecoration(

                                          contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                                          border: new OutlineInputBorder(
                                            borderRadius:
                                            new BorderRadius.circular(0),
                                              borderSide: new BorderSide(color: Colors.blue, width: 1)
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      //color: Colors.white,
                                      padding:
                                      EdgeInsets.fromLTRB(5, 10, 5, 10),
                                      child: TextField(
                                        maxLength: 1,
                                        keyboardType: TextInputType.number,
                                        controller: user,
                                        decoration: new InputDecoration(
                                          contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                                          border: new OutlineInputBorder(
                                            borderRadius:
                                            new BorderRadius.circular(0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      //color: Colors.blueAccent,
                                      padding:
                                      EdgeInsets.fromLTRB(5, 10, 5, 10),
                                      child: TextField(
                                        controller: pass,
                                        maxLength: 1,
                                        keyboardType: TextInputType.number,
                                        obscureText: true,
                                        decoration: new InputDecoration(
                                          contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                                          border: new OutlineInputBorder(
                                            borderRadius:
                                            new BorderRadius.circular(0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding:
                                      EdgeInsets.fromLTRB(5, 10, 5, 10),
                                      child:Center(

                                        child: TextField(
                                          maxLength: 1,
                                          keyboardType: TextInputType.number,
                                          controller: pass2,
                                          //obscureText: true,
                                          decoration: new InputDecoration(
                                            contentPadding: const EdgeInsets.symmetric                                (vertical: 10.0, horizontal: 10),
                                            border: new OutlineInputBorder(
                                              borderRadius:
                                              new BorderRadius.circular(0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      //color: Colors.blueAccent,

                                    ),
                                  ),
                                ],
                              ),
                              ),
                            Container(
                              child: Container(
                                //color: Colors.blueAccent,
                                width: double.infinity,

                                margin: EdgeInsets.fromLTRB(70, 80, 70, 10),
                                height: 50,
                                child: RaisedButton(
                                  //padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                                  color: Color.fromRGBO(12, 53, 238, 1),
                                  onPressed: () {}, //
                                  child: new Text(
                                    "CONTINUE",
                                    style: TextStyle(
                                      fontFamily: 'Eina_regular',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                //color: Colors.white,
                                padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                                child: SizedBox(
                                  height: 100,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
