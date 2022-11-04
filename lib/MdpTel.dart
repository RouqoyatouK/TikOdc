import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class MdpTel extends StatelessWidget {
  const MdpTel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: FaIcon(FontAwesomeIcons.arrowLeft),
          onPressed: () {  },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, children: [

          Text('Saisis ton numéro de téléphone', style: TextStyle(fontWeight: FontWeight.bold),),
          Text('Nous enverrons un code sur ton téléphone.'),

          SizedBox(
            height: 20.0,
          ),

          IntlPhoneField(
            //maxLength: 25,
            decoration: const InputDecoration(
              //labelText: 'Champ de formulaire',
                hintText: 'Numéro de téléphone',
                border: UnderlineInputBorder()),
          ),


          SizedBox(
            height: 20.0,
          ),

          SizedBox(
            width: 200.0,
            height: 50.0,
            child: Card(
              color: Colors.grey,
              child: Center(
                child: Text(
                  'Envoyer un code',
                  style: TextStyle(color: Colors.grey),
                ), //Text
              ), //Center
            ), //Card
          ), //SizedBox

        ],
        ),
      ),
    );

  }
}


