import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'OPT.dart';
import 'SignupBirth.dart';

class Sign extends StatelessWidget {
  const Sign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, children: [

          TextFormField(
            maxLength: 25,
            decoration: const InputDecoration(
              //labelText: 'Champ de formulaire',
                hintText: 'Votre email',
                border: UnderlineInputBorder()),
          ),

          Text('Ton numéro de téléphone servira à àméliorer ton expérience sur tiktok, notamment en te mettant '
              'en relation avec des personnes que tu connâit peut-être , en personnalisant tes publicités,'
              'etc. Si tu t\'inscris par SMS, des frais peuvent s\'appliquer. En savoir plus'),
          SizedBox(
            height: 20.0,
          ),

          SizedBox(width: 200.0,
            child: Builder(
              builder: (context) => ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    onPrimary: Colors.white),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Otpform(),),);
                },
                child: Text('Suivant'),
              ),
            ),
          ),






        ],
        ),
      ),
    );

  }
}
