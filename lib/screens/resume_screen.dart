import 'package:flutter/material.dart';
import 'package:project3/lib.dart';
import 'package:url_launcher/url_launcher.dart';

class ResumeScreen extends StatelessWidget {
  ResumeScreen({super.key});

  final BusinessCard newCard = BusinessCard();
  final ResumeEntry resumeEntry = ResumeEntry(
    jobTitle: "Software Developer",
    companyName: "5th Edition Enterprises",
    dateRange: "2020 - Present",
    location: "Neverwinter, OR",
    description:
        "Responsibilities include maintaining and implementing codebases, testing, debugging. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.bodyMedium!,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.blue, Colors.red])),
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 2.0, horizontal: 5.0),
                        child: Text(newCard.name,
                            style: Theme.of(context).textTheme.headline5),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 3.0, horizontal: 5.0),
                        child: Text(newCard.title,
                            style: const TextStyle(fontFamily: "Bungee")),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 5.0),
                        child: Row(
                          children: [
                            Text(newCard.email),
                            const SizedBox(width: 50),
                            GestureDetector(
                              child: Text(newCard.websiteURL),
                              onTap: () => launchUrl(
                                  Uri.parse("https://github.com/ledbetni/")),
                            )
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                      resumeEntry,
                      resumeEntry,
                      resumeEntry,
                      resumeEntry,
                      resumeEntry,
                      resumeEntry,
                      resumeEntry,
                      resumeEntry,
                      resumeEntry,
                      resumeEntry,
                      resumeEntry
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
