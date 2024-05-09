import 'package:flutter/material.dart';
import 'package:project3/lib.dart';
import 'package:url_launcher/url_launcher.dart';

class BusinessCardScreen extends StatelessWidget {
  BusinessCardScreen({super.key});

  final BusinessCard newCard = BusinessCard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.blue, Colors.red])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
              child: SizedBox(
                child: Image.asset('assets/image.jpg'),
                width: 100,
                height: 100,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
              child: Text(
                newCard.name,
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 2.0, horizontal: 0.0),
              child: Text(
                newCard.title,
                style: const TextStyle(fontFamily: 'Bungee'),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
              child: GestureDetector(
                child: Text(newCard.phoneNumber),
                onTap: () => launchUrl(Uri.parse("sms:281 330 8004")),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Text(
                      newCard.websiteURL,
                      style: const TextStyle(fontSize: 12),
                    ),
                    onTap: () =>
                        launchUrl(Uri.parse("https://github.com/ledbetni/")),
                  ),
                  const SizedBox(width: 50),
                  Text(newCard.email, style: const TextStyle(fontSize: 12)),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
