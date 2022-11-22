import 'package:flutter/material.dart';

import 'HomeScreen.dart';

class EditPage extends StatefulWidget{
  EditPageState createState() => EditPageState();
}

class EditPageState extends State<EditPage> {

String dropval = "choose a value";
List<String> list =<String>['Data 1','data 2'];
String newsms = "write here please";
@override
Widget build(BuildContext context) {

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
height:250,
width:MediaQuery.of(context).size.width * 0,
child:
Stack(
alignment:Alignment.topLeft,
children: [
Padding(
padding:EdgeInsets.symmetric(vertical: 0,horizontal:7),
child:Align(
alignment:Alignment(0.0, -0.7),
child:TextField(
controller:TextEditingController(text:newsms),
obscureText:false,
textAlign:TextAlign.start,
maxLines:5,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
decoration:InputDecoration(
disabledBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(10.0),
borderSide:BorderSide(
color:Color(0xff000000),
width:1
),
),
focusedBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(10.0),
borderSide:BorderSide(
color:Color(0xff000000),
width:1
),
),
enabledBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(10.0),
borderSide:BorderSide(
color:Color(0xff000000),
width:1
),
),
labelText:"Message Previw",
labelStyle:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
hintText:"Hint Text",
hintStyle:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
filled:true,
fillColor:Color(0xfff2f2f3),
isDense:false,
contentPadding:EdgeInsets.symmetric(vertical: 8,horizontal:12),
),
),
),
),
// this part will be added later if possible 
// the idea here is anybody can add his data according to his csv sheet
// for now the app take a specific type of data and i want to eliminate it in the future if possible (time wise)
/*Align(
alignment:Alignment(-0.6, 0.4),
child:Container(
width:160,
height:50,
padding:EdgeInsets.symmetric(horizontal: 8, vertical: 4),
decoration: BoxDecoration(
color:Color(0xffffffff),
borderRadius:BorderRadius.circular(0),
),
child:DropdownButtonHideUnderline(child:DropdownButton(
//hint: "",
    value:dropval,
    onChanged: (value){
          //dropchange();
          setState(() {
            dropval = value!;
          });
    },
    items:list.map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
          value: value,
            child: Text(value),);
    }).toList(),style: TextStyle(
            color:Color(0xff000000),
            fontSize:16,
            fontWeight:FontWeight.w400,
            fontStyle:FontStyle.normal,
    ), 
    
    elevation:8,
    isExpanded: true,),)
),
),

Align(
      alignment:Alignment(0.6, 0.3),
      child:IconButton(
      icon:Icon(
      Icons.add_circle
      ),
      onPressed:(){
        newsms+" "+dropval;
      },
      color:Color(0xff212435),
      iconSize:24,
      ),
),*/
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
onPressed:(){

  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){ return Home();}));
},
color:Color(0xffffffff),
elevation:0,
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.circular(10.0),
side:BorderSide(color:Color(0xff808080),width:1),
),
padding:EdgeInsets.all(16),
child:Text("Annule", style: TextStyle( fontSize:14,
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
onPressed:(){},
color:Color(0xffffffff),
elevation:0,
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.circular(10.0),
side:BorderSide(color:Color(0xff808080),width:1),
),
padding:EdgeInsets.all(16),
child:Text("Save", style: TextStyle( fontSize:14,
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
