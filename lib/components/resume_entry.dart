import 'package:flutter/material.dart';
import 'package:project3/lib.dart';

class ResumeEntry extends StatelessWidget {
  ResumeEntry(
      {Key? key,
      required this.jobTitle,
      required this.companyName,
      required this.dateRange,
      required this.location,
      required this.description})
      : super(key: key);

  String jobTitle = "Software Developer";
  String companyName = "5th Edition Enterprises ";
  String dateRange = "2020 - Present ";
  String location = "Neverwinter, OR";
  String description =
      "Responsibilities include maintaining and implementing codebases, testing, debugging.";

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
          child: Text(
            jobTitle,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
                child: Text(
                  companyName,
                  style: const TextStyle(fontSize: 11),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
                child: Text(dateRange, style: const TextStyle(fontSize: 11)),
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
                child: Text(location, style: const TextStyle(fontSize: 11)),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 10.0),
          child: Text(description),
        )
      ],
    );
  }
}
