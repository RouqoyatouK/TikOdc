import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SignupBirth.dart';

class ConectEmail extends StatelessWidget {
  const ConectEmail({Key? key}) : super(key: key);

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
                hintText: 'Entrer l\'email',
                border: UnderlineInputBorder()),
          ),

          TextFormField(
            maxLength: 25,
            decoration: const InputDecoration(
              //labelText: 'Champ de formulaire',
                hintText: 'Mot de passe',
                border: UnderlineInputBorder()),
          ),

          GestureDetector(
            onTap: () => {

            },
            child: Text('Mot de passe oublié ?', textAlign: TextAlign.center,
            ),
          ),

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
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Birth(),),);
                },
                child: Text('Connexion'),
              ),
            ),
          ),
        ],
        ),
      ),
    );


  }
}

