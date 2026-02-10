import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.image,
    required this.title,
    required this.appleUrl,
    required this.googleUrl,
    required this.description,
  });

  final String image;
  final String title;
  final String appleUrl;
  final String googleUrl;
  final String description;

  void launchUrl(String url) {
    window.location.href = url;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff1A1A1A),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withOpacity(0.1)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        fit: StackFit.expand,
        children: [
          // 1. Background Image with Gradient
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff2a2a2a), Color(0xff1a1a1a)],
              ),
            ),
          ),

          // 2. Main Image (Logo) centered
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(
                  20, 20, 20, 80), // Padding at bottom for text
              child: Image.asset(
                image,
                fit: BoxFit.contain,
              ),
            ),
          ),

          // 3. Gradient Overlay for Text Readability
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 160,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.6),
                    Colors.black.withOpacity(0.9),
                  ],
                ),
              ),
            ),
          ),

          // 4. Content
          Positioned(
            bottom: 15,
            left: 15,
            right: 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Row(
                      children: [
                        if (appleUrl.isNotEmpty)
                          _buildIconButton(Icons.apple, appleUrl),
                        if (appleUrl.isNotEmpty && googleUrl.isNotEmpty)
                          const SizedBox(width: 8),
                        if (googleUrl.isNotEmpty)
                          _buildIconButton(Icons.play_arrow, googleUrl),
                      ],
                    ),
                  ],
                ),
                if (description.isNotEmpty) ...[
                  const SizedBox(height: 6),
                  Text(
                    description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontSize: 12,
                      height: 1.4,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIconButton(IconData icon, String url) {
    return InkWell(
      onTap: () => launchUrl(url),
      borderRadius: BorderRadius.circular(30),
      child: Container(
        height: 32,
        width: 32,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white.withOpacity(0.1),
          border: Border.all(color: Colors.white.withOpacity(0.2)),
        ),
        child: Icon(icon, color: Colors.white, size: 18),
      ),
    );
  }
}
