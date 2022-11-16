import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_firsr/MdpTel.dart';

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
            maxLength: 10,
            decoration: const InputDecoration(
              //labelText: 'Champ de formulaire',
                hintText: 'Entrer l\'email',
                border: UnderlineInputBorder()),
          ),

          TextFormField(
            maxLength: 10,
            decoration: const InputDecoration(
              //labelText: 'Champ de formulaire',
                hintText: 'Mot de passe',
                border: UnderlineInputBorder()),
          ),

          SizedBox(width: 100.0,
            child: OutlinedButton(
              onPressed: () => _dialogBuilder(context),
              child: const Text('Mot de passe oublie', style: TextStyle(color: Colors.black), ),
            ),
          ),


          SizedBox(width: 100.0,
            child: Builder(
              builder: (context) => ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    onPrimary: Colors.white),
                  onPressed: () {
                    //_openPopup2(context);
                  },

               // onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => Birth(),),);},
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


Future<void> _dialogBuilder(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text(''),
        content: InkWell(
          child: const Text('Par Téléphone',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
          onTap: () =>{
            Navigator.of(context).push(
                MaterialPageRoute(builder: (_) =>const MdpTel(),)
            ),
          },
        ),



       // actions: <Widget>[
          /*TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: const Text('Disable'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: const Text('Enable'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),*/
        //],
      );
    },
  );
}
