import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xff2F353A),
              Color(0xff2C3036),
            ],
          ),
        ),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: MenuButton(),
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Tesla',
              style: TextStyle(
                color: Color(0xff7F8489),
                fontSize: 18.0,
              ),
            ),
            const Text(
              'Ridz Creation',
              style: TextStyle(
                fontSize: 30.0,
                color: Color(0xff7F8489),
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 50.0),
            Image.asset(
              'assets/Car.png',
              height: 400.0,
              width: 400.0,
            ),
            const Text(
              'Artificial Turn On',
              style: TextStyle(
                color: Color(0xff7F8489),
                fontSize: 24.0,
              ),
            ),
            const SizedBox(height: 20.0),
            TurnOnOffButton(),
          ],
        ),
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  const MenuButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 50.0,
        width: 50.0,
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Color(0xff2C3036),
                Color(0xff2F353A),
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0xff7F8489),
                spreadRadius: 2.0,
                blurRadius: 5.0,
              ),
            ]),
        child: const Icon(
          Icons.settings,
          color: Colors.white,
        ),
      ),
    );
  }
}

class TurnOnOffButton extends StatelessWidget {
  const TurnOnOffButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      width: 80.0,
      decoration: const BoxDecoration(
          color: Color(0xff058DD9),
          shape: BoxShape.circle,
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Color(0xff005EA3),
                Color(0xff11A8FD),
              ]),
          boxShadow: [
            BoxShadow(
                color: Color(0xff005EA3),
                blurRadius: 2.0,
                spreadRadius: 2.0,
                offset: Offset(1.0, 1.0))
          ]),
      child: const Icon(
        Icons.lock,
        color: Colors.white,
        size: 35.0,
      ),
    );
  }
}
