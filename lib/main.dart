import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Privacy Checker',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Scaffold(
        backgroundColor: Colors.grey[350],
        appBar: AppBar(
          leading:IconButton(
            icon: Icon(Icons.account_circle,  color: Colors.white,size: 30.0,),
          ),
          title: Text('Privacy Checker' , style: TextStyle(fontSize: 22.0),),
          centerTitle: true,
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  showAlertDialog(BuildContext context) {
    // Create button
    Widget okButton = FlatButton(
      child: Text("OK" , style: TextStyle(color: Colors.white), ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      backgroundColor: Colors.teal,
      content: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: CircleAvatar(
                backgroundImage: AssetImage('$imgUrl'),
                radius: 50.0,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Text(
                'You Were Born on',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0 , color: Colors.white),
              ),
            ),
            Container(
              
              margin: EdgeInsets.all(20.0),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text('$resultDate of $resultMonth in $resultYear' , style: TextStyle(fontSize: 22.0 , color: Colors.black),textAlign: TextAlign.center,)),
              ),
            )
          ],
        ),
      ),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  final _idcontroller = TextEditingController();

  var resultYear = "?";
  var resultMonth = "?";
  var resultDate = "?";

  var year;
  var month;
  int date;
  var newdate;
  var day;
  var imgUrl;

  calculate() {
    var id = _idcontroller.text;
    if (id.length == 10) {
      year = "19" + id[0] + id[1];
      date = int.parse(id[2] + id[3] + id[4]);
      // print(int.parse(id[2] + id[3] + id[4]));

      if (date <= 500) {
        setState(() {
          imgUrl = 'images/male.jpg';
        });
      } else {
        date = date - 500;
        setState(() {
          imgUrl = 'images/female.jpg';
        });
      }

      if (int.parse(year) % 4 == 0) {
        if (date <= 31) {
          month = "January";
          day = date;
        } else if (date <= 60) {
          month = "February";
          day = date - 31;
        } else if (date <= 91) {
          month = "March";
          day = date - 60;
        } else if (date <= 121) {
          month = "April";
          day = date - 91;
        } else if (date <= 152) {
          month = "May";
          day = date - 121;
        } else if (date <= 182) {
          month = "June";
          day = date - 152;
        } else if (date <= 213) {
          month = "July";
          day = date - 182;
        } else if (date <= 244) {
          month = "August";
          day = date - 213;
        } else if (date <= 274) {
          month = "September";
          day = date - 244;
        } else if (date <= 305) {
          month = "October";
          day = date - 274;
        } else if (date <= 335) {
          month = "November";
          day = date - 305;
        } else if (date <= 366) {
          month = "December";
          day = date - 335;
        }
      } else {
        if (date <= 31) {
          month = "January";
          day = date;
        } else if (date <= 59) {
          month = "February";
          day = date - 31;
        } else if (date <= 90) {
          month = "March";
          day = date - 59;
        } else if (date <= 120) {
          month = "April";
          day = date - 90;
        } else if (date <= 151) {
          month = "May";
          day = date - 120;
        } else if (date <= 181) {
          month = "June";
          day = date - 151;
        } else if (date <= 212) {
          month = "July";
          day = date - 181;
        } else if (date <= 243) {
          month = "August";
          day = date - 212;
        } else if (date <= 273) {
          month = "September";
          day = date - 243;
        } else if (date <= 304) {
          month = "October";
          day = date - 273;
        } else if (date <= 334) {
          month = "November";
          day = date - 304;
        } else if (date <= 365) {
          month = "December";
          day = date - 335;
        }
      }
    } //old id
    else if (id.length == 12) {
      if (id[0] + id[1] == "20") {
        year = "20" + id[2] + id[3];
        date = int.parse(id[4] + id[5] + id[6]);
      } else {
        year = "19" + id[2] + id[3];
        date = int.parse(id[4] + id[5] + id[6]);
      }

      if (date <= 500) {
        setState(() {
          imgUrl = 'images/male.jpg';
        });
      } else {
        date = date - 500;
        setState(() {
          imgUrl = 'images/female.jpg';
        });
      }

      if (int.parse(year) % 4 == 0) {
        if (date <= 31) {
          month = "January";
          day = date;
        } else if (date <= 60) {
          month = "February";
          day = date - 31;
        } else if (date <= 91) {
          month = "March";
          day = date - 60;
        } else if (date <= 121) {
          month = "April";
          day = date - 91;
        } else if (date <= 152) {
          month = "May";
          day = date - 121;
        } else if (date <= 182) {
          month = "June";
          day = date - 152;
        } else if (date <= 213) {
          month = "July";
          day = date - 182;
        } else if (date <= 244) {
          month = "August";
          day = date - 213;
        } else if (date <= 274) {
          month = "September";
          day = date - 244;
        } else if (date <= 305) {
          month = "October";
          day = date - 274;
        } else if (date <= 335) {
          month = "November";
          day = date - 305;
        } else if (date <= 366) {
          month = "December";
          day = date - 335;
        }
      } else {
        if (date <= 31) {
          month = "January";
          day = date;
        } else if (date <= 59) {
          month = "February";
          day = date - 31;
        } else if (date <= 90) {
          month = "March";
          day = date - 59;
        } else if (date <= 120) {
          month = "April";
          day = date - 90;
        } else if (date <= 151) {
          month = "May";
          day = date - 120;
        } else if (date <= 181) {
          month = "June";
          day = date - 151;
        } else if (date <= 212) {
          month = "July";
          day = date - 181;
        } else if (date <= 243) {
          month = "August";
          day = date - 212;
        } else if (date <= 273) {
          month = "September";
          day = date - 243;
        } else if (date <= 304) {
          month = "October";
          day = date - 273;
        } else if (date <= 334) {
          month = "November";
          day = date - 304;
        } else if (date <= 365) {
          month = "December";
          day = date - 335;
        }
      }
    } else {
      return Alert(
              context: context,
              title: 'something went wrong!!',
              desc: 'Please Check Your ID number')
          .show();
    }
    setState(() {
      resultYear = year;
      resultMonth = month;
      resultDate = day.toString();
    });

    return showAlertDialog(context);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 60.0),
          child: CircleAvatar(
            radius: 100.0,
            backgroundImage: AssetImage('images/logo.png'),
          ),
        ),
        Container(
          child: Card(
            margin: EdgeInsets.only(
                left: 20.0, right: 20.0, top: 30.0, bottom: 10.0),
            child: TextFormField(
              controller: _idcontroller,
              decoration: InputDecoration(hintText: 'Enter Your id'),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 20.0, right: 20.0),
                child: FlatButton.icon(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    calculate();
                  },
                  label: Text(
                    'See Your privacy',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.normal),
                  ),
                  color: Colors.teal,
                  padding: EdgeInsets.all(15.0),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
