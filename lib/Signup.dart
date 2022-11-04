import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_firsr/SignupMail.dart';
import 'package:test_firsr/SignupTel.dart';

void main() => runApp(const Signup());

class Signup extends StatelessWidget {
  const Signup({super.key});

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
          title: const Text('Inscription', style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: FaIcon(FontAwesomeIcons.close), onPressed: () {

          },
          ),

          centerTitle: true,
          bottom: const TabBar(

            tabs: <Widget>[

              Text("Téléphone", style: TextStyle(color: Colors.black),),
              Text("Email", style: TextStyle(color: Colors.black),),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            SgnTel(),
            Sign(),

          ],
        ),
      ),
    );
  }
}
