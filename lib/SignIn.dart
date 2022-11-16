import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_firsr/SignInEmail.dart';
import 'package:test_firsr/SignInTel.dart';
import 'package:test_firsr/SignupMail.dart';
import 'package:test_firsr/SignupTel.dart';

void main() => runApp(const SignIn());

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(

          title: const Text('Connexion', style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.white,

          centerTitle: true,
          leading: IconButton(
            icon: FaIcon(FontAwesomeIcons.close), color: Colors.black,
            onPressed: () => {
              Navigator.pop(context),
            },
          ),
          bottom: const TabBar(

            tabs: <Widget>[

              Text("Téléphone", style: TextStyle(color: Colors.black),),
              Text("Email", style: TextStyle(color: Colors.black),),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            ConectTel(),
            ConectEmail(),

          ],
        ),
      ),
    );
  }
}
