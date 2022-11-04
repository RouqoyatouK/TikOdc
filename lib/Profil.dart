import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_firsr/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'SignIn.dart';
import 'Signup.dart';
import 'SignupTel.dart';



class Profil extends StatelessWidget {
 // const Profil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'TikSignup',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(

          title: Text('Profile', style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 30),
              Container(
                width: 100.0,
                height: 100.0,
               decoration: BoxDecoration(
                 shape: BoxShape.circle,
                 color: Colors.grey[200],
               ),
              ),


                Text(
                  '@nomd\'utilisateur',
                  style: TextStyle(
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Column(
                          children: [
                            Text(
                              '0',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            Text(
                              'Suivis',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              '0',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            Text(
                              'Followers',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            Text(
                              '0',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "J'aime",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 90.0,
                ),
                SizedBox(width: 200.0,
                  child: Builder(
                    builder: (context) => ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        onPrimary: Colors.white),
                     onPressed: () {
                       _openPopup(context);
                     },
                      child: Text('Connecte-toi ou inscris-toi'),
                    ),
                  ),
                ),
                SizedBox(height: 15.0,
                ),
              ],
            ),
        ),
      ),
    );
  }
}

void _openPopup(context){
  showModalBottomSheet(context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (BuildContext bc){
        return Container(
          height: MediaQuery.of(context).size.height * .90,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Column(
                children: <Widget>[
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                        onTap: () => Navigator.pop(context),
                      child: Icon(
                        Icons.close,
                      ),
                    ),
                    Icon(
                      Icons.more,
                    ),
                  ],
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Text('Inscription sur TikTok',
                    style: TextStyle(fontSize: 25.0),
                  ),
                  SizedBox(height: 10.0,
                    ),

                  Text('Crée un profil, suis dautres comptes, crée tes propres vidéos et bien plus',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black54,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),

                  ButtonTheme(
                    minWidth: 250.0,

                    child: ElevatedButton(
                      onPressed: () => {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Signup()
                        ),
                        ),
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.redAccent,
                       // onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.grey,
                                width: 0.5
                            )
                        ),),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[

                            Expanded(
                              flex: 2,
                              child: Text(
                                "Utilise un téléphone ou une adresse e-mail",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),

                  Text('Ou continuer avec',
                    style: TextStyle(fontSize: 20.0,
                    color: Colors.black54,
                    ),
                  ),

                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(onPressed: () => {}, icon: FaIcon(FontAwesomeIcons.facebook),color: Colors.blue, ),
                        IconButton(onPressed: () => {}, icon: FaIcon(FontAwesomeIcons.google),color: Colors.red,),
                        IconButton(onPressed: () => {}, icon: FaIcon(FontAwesomeIcons.twitter),color: Colors.blue,),

                      ],
                    ),
                  ),
                  SizedBox(
                    height: 140.0,
                  ),

                  Text('En continuuant , tu acceptes nos Conditions',
                    style: TextStyle(fontSize: 20.0,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),

                  ButtonTheme(
                    minWidth: 250.0,
                    child: ElevatedButton(
                      onPressed: () {
                        _openPopup2(context);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.grey,
                                width: 0.5
                            )
                        ),),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[

                            Expanded(
                              flex: 2,
                              child: Text(
                                "Tu as dejà un compte? Connecte-toi",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black87,

                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),


                ],


              ),
            ),
          ),
        );
  });
}


// POPUP2

void _openPopup2(context){
  showModalBottomSheet(context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (BuildContext bc){
        return Container(
          height: MediaQuery.of(context).size.height * .90,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Column(
                children: <Widget>[
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Icon(
                          Icons.close,
                        ),
                      ),
                      Icon(
                        Icons.question_answer_outlined,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text('Connecte-toi à TikTok',
                    style: TextStyle(fontSize: 25.0),
                  ),
                  SizedBox(height: 10.0,
                  ),

                  Text('Gère ton compte, consulte les notifications, commente des vidéos et bien plus encore.',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black54,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ButtonTheme(
                    minWidth: 200.0,
                    child: ElevatedButton(
                      onPressed: () => {Navigator.of(context).push(MaterialPageRoute( builder: (context) => SignIn()),),},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.grey,
                                width: 0.5
                            )
                        ),),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: FaIcon(
                                FontAwesomeIcons.user,
                                color: Colors.blue,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "Utiliser téléphone/e-mail/nom d\'utilisateur",
                                style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black87
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),

                  ButtonTheme(
                    minWidth: 200.0,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.grey,
                                width: 0.5
                            )
                        ),),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: FaIcon(
                                FontAwesomeIcons.facebook,
                                color: Colors.blue,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "Continuer avec Facebook",
                                style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black87
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),

                  //3Google

                  ButtonTheme(
                    minWidth: 200.0,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.grey,
                                width: 0.5
                            )
                        ),),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: FaIcon(
                                FontAwesomeIcons.google,
                                color: Colors.blue,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "Continuer avec Google",
                                style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black87
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),

                  //4Twitter

                  ButtonTheme(
                    minWidth: 200.0,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.grey,
                                width: 0.5
                            )
                        ),),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: FaIcon(
                                FontAwesomeIcons.twitter,
                                color: Colors.blue,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "Continuer avec Twitter",
                                style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black87
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),

                  //5insta

                  ButtonTheme(
                    minWidth: 200.0,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.grey,
                                width: 0.5
                            )
                        ),),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: FaIcon(
                                FontAwesomeIcons.instagram,
                                color: Colors.blue,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "Continuer avec Istagramme",
                                style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black87
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),

                  // le bas

                  Text('En continuuant , tu acceptes nos Conditions',
                    style: TextStyle(fontSize: 20.0,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),

                  ButtonTheme(
                    minWidth: 250.0,
                    child: ElevatedButton(
                      onPressed: () {
                        _openPopup2(context);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.grey,
                                width: 0.5
                            )
                        ),),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[

                            Expanded(
                              flex: 2,
                              child: Text(
                                "Tu n\'a pas de compte ? Inscription",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.black87,

                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),



                ],
              ),
            ),
          ),
        );
      });
}

