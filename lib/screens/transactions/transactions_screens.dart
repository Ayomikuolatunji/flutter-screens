import 'package:flutter/material.dart';
import 'package:flutter_building_ui/data/transactions.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionsScreens extends StatelessWidget {
  const TransactionsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            Text(
              "Transactions",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: Colors.grey[900],
                    letterSpacing: .5,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "February 2018",
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    color: Colors.blue,
                    letterSpacing: .5,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$3 128.00",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.grey[900],
                          letterSpacing: .5,
                          fontSize: 27,
                          fontWeight: FontWeight.bold),
                    )),
                const Icon(Icons.calendar_month)
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 90,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("26",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Colors.grey[900],
                                    letterSpacing: .5,
                                    fontSize: 29,
                                    fontWeight: FontWeight.bold),
                              )),
                          Text("Transactions",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Colors.grey[400],
                                    letterSpacing: .5,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    height: 90,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("07",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Colors.grey[900],
                                    letterSpacing: .5,
                                    fontSize: 29,
                                    fontWeight: FontWeight.bold),
                              )),
                          Text("Categories",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Colors.grey[400],
                                    letterSpacing: .5,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: ListView.builder(
                    itemCount: transactions.length,
                    itemBuilder: ((ctx, index) => ListTile(
                          leading: Icon(
                            transactions[index].icon,
                            size: 40,
                          ),
                          title: Text(
                            transactions[index].name,
                            style: const TextStyle(fontSize: 14),
                          ),
                          subtitle: Text(
                            transactions[index].bankName,
                            style: const TextStyle(fontSize: 12),
                          ),
                          trailing: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "-${transactions[index].amount}",
                                style: const TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(transactions[index].billType)
                            ],
                          ),
                        ))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
