import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledButton extends StatelessWidget {
  const StyledButton({
    super.key,
    required this.onTap,
    required this.text,
  });

  final void Function() onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurple,
      ),
      onPressed: onTap,
      child: Text(
        textAlign: TextAlign.center,
        text,
        style: GoogleFonts.robotoMono(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    );
  }
}
