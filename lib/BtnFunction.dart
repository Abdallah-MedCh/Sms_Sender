import 'package:csv/csv.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:sms_sender/HomeScreen.dart';
import 'package:sms_sender/person.dart';
import 'dart:io';
import 'dart:async';
import 'dart:convert';
import 'package:file_picker/file_picker.dart';

class BtnFunction{

  //-----------------------------------Var
List<String> p = [];
 
List<Person> ListePer = [];

List<List> input = [];

//----------------------------------------


void get_file () async {

  FilePickerResult? res = await FilePicker.platform.pickFiles(type: FileType.custom,
  allowedExtensions: ['csv'],
  dialogTitle: 'select relance client.csv:');
  if(res!=null){

        String? r = res.files.single.path.toString();
    input = await File(r.toString()).openRead().transform(utf8.decoder).transform(CsvToListConverter()).toList();
    read_file();
    

  }

 
  //readfile(input);
  

}

void read_file(){

  
int i=0;
  var l =input.length;
  while(i < l){
          Person per = Person();
          //per.setType(input.elementAt(i).elementAt(0).toString().split(';')[0]);
          per.setNom(input.elementAt(i).elementAt(0).toString().split(';')[0]);
          per.setPolice(input.elementAt(i).elementAt(0).toString().split(';')[2]);
          per.setNum(input.elementAt(i).elementAt(0).toString().split(';')[1]);
          per.setDate(input.elementAt(i).elementAt(0).toString().split(';')[3]);
          per.setMarque(input.elementAt(i).elementAt(0).toString().split(';')[4]);
          ListePer.add(per);
          

          
      
    i++;
      
  }
 

}

void send_msg() async {

   var l = ListePer.length;
    String date=' ';
    String marque=' ';
    String nomC=' ';
    String type=' ';
    String police=' ';
    //print(text);
     print('------------------');

  
 int i =0;
  while(i < l){

        nomC =  ListePer.elementAt(i).getNom();
        type =  ListePer.elementAt(i).getType();
        date =  ListePer.elementAt(i).getDate();
        marque = ListePer.elementAt(i).getMarque();
        police = ListePer.elementAt(i).getPolice();
         String text = "CRMA BENI SAF: Bonjour "+nomC+"  Votre Assurance "+type+" "+police+" "+marque+" expire le "+date+" merci de passe reounouvler";

      List<String> recipents = [];
      recipents.add(ListePer.elementAt(i).getNum());//
 String _result = await sendSMS(message: text, recipients: recipents,sendDirect: true);
      //.catchError((onError) {
    //print(onError);
  
  //});
  //print(_result);
  
  
  //print(ListePer.elementAt(i).getNum().replaceAll(' ', ''));   // beh tgla3 lespace m numero
      
    i++;
      
  }

}

}


