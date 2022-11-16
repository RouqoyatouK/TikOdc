import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SgnTel extends StatelessWidget {
  const SgnTel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center, children: [
          IntlPhoneField(
            //maxLength: 25,
            decoration: const InputDecoration(
                //labelText: 'Champ de formulaire',
                hintText: 'Numéro de téléphone',
                border: UnderlineInputBorder()),
          ),

          Text('Ton numéro de téléphone servira à àméliorer ton expérience sur tiktok, notamment en te mettant '
              'en relation avec des personnes que tu connâit peut-être , en personnalisant tes publicités,'
              'etc. Si tu t\'inscris par SMS, des frais peuvent s\'appliquer. En savoir plus'),
          SizedBox(
            height: 20.0,
          ),

           SizedBox(
            width: 200.0,
            height: 50.0,
            child: Card(
              color: Colors.red,
              child: Center(
                child: Text(
                  'Envoyer un code',
                  style: TextStyle(color: Colors.white),
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


