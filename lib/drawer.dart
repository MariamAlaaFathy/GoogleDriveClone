// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class drawer extends StatefulWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40, left: 20, bottom: 15),
          child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
            Image.asset("images/google.png", width: 70),
            Text(
              " Drive",
              style: TextStyle(fontSize: 20, color: Colors.grey[750]),
            )
          ]),
        ),
        const Divider(
          thickness: 1.5,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            children: const [
              Icon(Icons.access_time_outlined, size: 20),
              SizedBox(
                width: 10,
              ),
              Text("Recent"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            children: const [
              Icon(Icons.offline_pin_outlined, size: 20),
              SizedBox(
                width: 10,
              ),
              Text("Offline"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            children: const [
              Icon(Icons.delete_outline, size: 20),
              SizedBox(
                width: 10,
              ),
              Text("Bin"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            children: const [
              Icon(Icons.backup_outlined, size: 20),
              SizedBox(
                width: 10,
              ),
              Text("Backups"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            children: const [
              Icon(Icons.settings, size: 20),
              SizedBox(
                width: 10,
              ),
              Text("Settings"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            children: const [
              Icon(Icons.help_outline, size: 20),
              SizedBox(
                width: 10,
              ),
              Text("Help and feedback"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            children: const [
              Icon(Icons.cloud_outlined, size: 20),
              SizedBox(
                width: 10,
              ),
              Text("Storage (79% full)"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: LinearProgressIndicator(
            value: 0.79,
            color: Colors.purple[500],
            backgroundColor: Colors.purple[100],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10, left: 20),
          child: Text(
            "11.87 GB of 15 GB used",
            style: TextStyle(fontSize: 14),
          ),
        ),
      ],
    );
  }
}
