import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_cupertino_date_picker_fork/flutter_cupertino_date_picker_fork.dart';

import 'Signup.dart';

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
          leading: IconButton(
            icon: FaIcon(FontAwesomeIcons.close), onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Signup() ),);

          },
          ),
          centerTitle: true,

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
                      FaIcon(FontAwesomeIcons.birthdayCake, color: Colors.blue, size: 200.0, ),

                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  TextField(
                    maxLength: 25,
                    decoration: const InputDecoration(
                      //labelText: 'Champ de formulaire',
                        hintText: 'Numéro de téléphone',
                        border: UnderlineInputBorder()),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );



  }
}
