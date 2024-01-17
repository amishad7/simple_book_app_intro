import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class first_home extends StatelessWidget {
  const first_home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://i.pinimg.com/564x/34/d7/0d/34d70dc689230e7b341458f84ece5449.jpg'),
          ),
        ),
        child: Stack(
          children: [
            Transform.translate(
              offset: Offset(120, 300),
              child: RichText(
                text: TextSpan(
                  text: 'All your\n',
                  style: GoogleFonts.fugazOne(
                    color: Colors.green.shade900,
                    fontWeight: FontWeight.bold,
                    fontSize: 47,
                  ),
                  children: const [
                    TextSpan(
                      text: 'books in one \n',
                    ),
                    TextSpan(
                      text: 'Place on\n',
                    ),
                    TextSpan(
                      text: 'Readium\n',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
