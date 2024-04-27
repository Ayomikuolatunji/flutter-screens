import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionsScreens extends StatelessWidget {
  const TransactionsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.chevron_left,
                size: 40,
              )),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 30,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Text(
              "Transactions",
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    color: Colors.black, letterSpacing: .5, fontSize: 30),
              ),
            )
          ],
        ),
      ),
    );
  }
}
