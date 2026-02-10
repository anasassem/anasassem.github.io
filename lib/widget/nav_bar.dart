import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/app_colors.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      color: AppColors.background,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Anas Asim",
            style: GoogleFonts.poppins(
              color: AppColors.textWhite,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          // We can add navigation links here for Desktop
          // Row(
          //   children: [
          //     _NavBarItem(title: "Home"),
          //     _NavBarItem(title: "About"),
          //     _NavBarItem(title: "Projects"),
          //     _NavBarItem(title: "Contact"),
          //   ],
          // )
        ],
      ),
    );
  }
}
