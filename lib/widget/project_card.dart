import 'dart:html';

import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard(
      {super.key,
      required this.title,
      required this.description,
      this.appleUrl,
      this.googleUrl, this.isLast=true});

  final String title;

  final String description;

  final String? appleUrl;

  final String? googleUrl;
  final bool isLast;
  void launchUrl(String url) {
    window.location.href = url;
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          trailing: SizedBox(
            width: 80,
            child: Row(
              children: [
                if (appleUrl != null)
                  IconButton(
                    onPressed: () {
                      launchUrl(appleUrl!);
                    },
                    icon: Icon(Icons.apple),
                  ),
                if (googleUrl != null)
                  IconButton(
                    onPressed: () {
                      launchUrl(googleUrl!);
                    },
                    icon: Icon(Icons.play_arrow),
                  ),
              ],
            ),
          ),
          title: Text(
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
              title),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
              description),
        ),
        if(isLast)
        Divider(
          thickness: 2,
        )
      ],
    );
  }
}
