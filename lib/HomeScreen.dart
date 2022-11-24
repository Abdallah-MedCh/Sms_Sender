import 'package:sms_sender/EditPage.dart';
import 'package:flutter/material.dart';
import 'package:sms_sender/BtnFunction.dart';

BtnFunction bn = BtnFunction();
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
class Home extends StatefulWidget{
  HomeScreen createState() => HomeScreen();
}
class HomeScreen extends State<Home> {

@override
Widget build(BuildContext context) {
String date='0',marque='1',nomC='2',police='3',type='4';
String msp = "CRMA BENI SAF: Bonjour "+nomC+"  Votre Assurance Auto"+police+" "+marque+" expire le "+date+" merci de passe reounouvler";

return Scaffold(
backgroundColor: Color(0xffffffff),
body:
Column(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.stretch,
mainAxisSize:MainAxisSize.max,
children: [
SizedBox(
height:200,
width:MediaQuery.of(context).size.width * 0,
child:
Stack(
alignment:Alignment.topLeft,
children: [
///***If you have exported images you must have to copy those images in assets/images directory.
Image(
image:AssetImage("assets/smsim.jpg"),
height:200,
width:MediaQuery.of(context).size.width,
fit:BoxFit.fill,
),
Align(
alignment:Alignment(-0.8, -0.4),
child:Text(
"Bulk SMS Sender",
textAlign: TextAlign.left,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w600,
fontStyle:FontStyle.italic,
fontSize:20,
color:Color(0xff000000),
),
),
),
],),),
SizedBox(
height:200,
width:MediaQuery.of(context).size.width * 0,
child:
Stack(
alignment:Alignment.topLeft,
children: [
Align(
alignment:Alignment(-0.8, -0.8),
child:Text(
"Text Preview",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
),
),
Padding(
padding:EdgeInsets.symmetric(vertical: 0,horizontal:10),
child:Align(
alignment:Alignment(-0.8, -0.3),
child:Text(
msp,
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
),
),
),
Align(
alignment:Alignment(0.8, -0.9),
child:IconButton(
icon:Icon(
Icons.edit
),
onPressed:(){

Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){ return EditPage();}));
  



},
color:Color(0xff212435),
iconSize:24,
),
),
],),),

SizedBox(
height:120,
width:MediaQuery.of(context).size.width * 0,
child:
Stack(
alignment:Alignment.topLeft,
children: [
Align(
alignment:Alignment(-1.0, -0.6),
child:MaterialButton(
  onPressed:() async {
 bn.get_file();

 setState(() {
   
   date='DATE EXPIRATION';
marque='MARQUE VEHICULE';
//nomC=bn.ListePer.elementAt(1).getNom();
police='NUM Police';
type='TYPE ASSURANCE';
   msp = 'oui';
 });
    
    },
   
color:Color(0xffffffff),
elevation:0,
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.circular(10.0),
side:BorderSide(color:Color(0xff808080),width:1),
),
padding:EdgeInsets.all(16),
child:Text("Get Data", style: TextStyle( fontSize:14,
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
),),
textColor:Color(0xff000000),
height:40,
minWidth:120,
),
),
Align(
alignment:Alignment(0.9, -0.6),
child:MaterialButton(
onPressed:() {


bn.send_msg();

},
color:Color(0xffffffff),
elevation:0,
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.circular(10.0),
side:BorderSide(color:Color(0xff808080),width:1),
),
padding:EdgeInsets.all(16),
child:Text("Send", style: TextStyle( fontSize:14,
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
),),
textColor:Color(0xff000000),
height:40,
minWidth:120,
),
),
],),),
],),
)
;}
}
