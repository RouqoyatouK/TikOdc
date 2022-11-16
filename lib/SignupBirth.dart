import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_cupertino_date_picker_fork/flutter_cupertino_date_picker_fork.dart';
import 'package:flutter_cupertino_date_picker_fork/flutter_cupertino_date_picker_fork.dart';
import 'package:test_firsr/SignIn.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'Signup.dart';
import 'SignupMail.dart';

class Birth extends StatelessWidget {
  const Birth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Inscription', style: TextStyle(color: Colors.black), ),
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: IconButton(
            icon: FaIcon(FontAwesomeIcons.close), color: Colors.black,
            onPressed: () => {
              //Navigator.pop(context),
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Sign() ))
            },
          ),
          /*elevation: ElevatedButton( onPressed: {Navigator.pop(context)},
            child: ,
           ),*/

        ),

        body: Center(

          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Column (
                      children: [
                        Text('Quelle est ta date de\n naissance ?', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                        Text("Ta date de naissance ne sera\n pas affichée publiquement.", style: TextStyle(fontSize: 15),),
                        //Expanded(child: Text('hhhjjjjnnnnnnnnnnnnnnnnnnnnnnnn'),),
                      ],
                  ),
                  Column(
                    children: [
                      FaIcon(FontAwesomeIcons.birthdayCake, color: Colors.black, size: 100.0, ),

                    ],
                  ),
                ],
              ),
              Container(
                child: Center(
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.center, children: [
                    TextFormField(
                      maxLength: 10,
                      decoration: const InputDecoration(
                        //labelText: 'Champ de formulaire',
                          hintText: 'Mot de passe',
                          border: UnderlineInputBorder()),
                    ),


                    SizedBox(width: 200.0,
                      child: Builder(
                        builder: (context) => ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.red,
                              onPrimary: Colors.white),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Birth(),),);
                          },
                          child: Text('Suivant'),
                        ),
                      ),
                    ),
                    /*Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Container(
                          height: 200,
                          child: CupertinoDatePicker(
                            mode: CupertinoDatePickerMode.date,
                            initialDateTime: DateTime(2000, 1, 1),
                            onDateTimeChanged: (DateTime newDateTime) {
                              // Do something
                            },
                          ),
                        ),
                      ],
                    )*/
                  ],
                    
                  ),

                ),
              ),

            ],
          ),
          

          
          
          
          
          
          
        ),
      ),
    );



  }
}
