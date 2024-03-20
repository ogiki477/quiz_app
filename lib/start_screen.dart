import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.myQuiz, {super.key});

  final void Function() myQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/mak-logo.png",
            alignment: Alignment.center,
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            "MakQuiz",
            style: GoogleFonts.lato(
              fontSize: 28,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          OutlinedButton.icon(
            onPressed: myQuiz,
            label: Text(
              "Start Quiz >>",
              style: GoogleFonts.ubuntu(
                fontSize: 28,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            icon: const Icon(Icons.arrow_circle_down),
          ),
        ],
      ),
    );
  }
}
