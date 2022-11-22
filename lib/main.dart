import 'package:flutter/material.dart';
import 'package:sms_sender/HomeScreen.dart';
import 'dart:async';
import 'dart:io';
import 'dart:convert';

import 'package:csv/csv.dart';
import 'package:sms_sender/person.dart';

Future<void> main() async {
  runApp(MyApp());  
}

//Edit for now will only change the text 
// or CRMA NAME 
// if the CRMA NAME CHANGED the adr of CRMA will also change
// a univarsal adr will be given somthing like:
// veuiller passer renouvler votre assurance dans le piont de vent le plus proche de vous
