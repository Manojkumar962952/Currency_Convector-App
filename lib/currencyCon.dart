import 'package:flutter/material.dart';

class currencyApp extends StatefulWidget {
  const currencyApp({Key? key}) : super(key: key);

  @override
  State<currencyApp> createState() => _currencyAppState();
}

class _currencyAppState extends State<currencyApp> {
  final borders = const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(
        color: Color(0xff00ff0d),
        style: BorderStyle.solid,
        width: 2,
      ));
  double res = 0.0;
  TextEditingController tc = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Currency Convector",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff00ff0d),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0xffebffec),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "₹ ${res.toStringAsFixed(2)}",
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 35),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: tc,
              decoration: InputDecoration(
                label: const Text("Enter a amt in usd"),
                labelStyle: const TextStyle(
                    color: Color(0xff00ff0d),
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
                prefixIcon: const Icon(
                  Icons.monetization_on,
                  color: Color(0xff00ff0d),
                  size: 28,
                ),
                enabledBorder: borders,
                focusedBorder: borders,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  res = double.parse(tc.text) * 81;
                });
              },
              style: TextButton.styleFrom(
                  elevation: 28,
                  backgroundColor: const Color(0xff00ff0d),
                  minimumSize: const Size(double.infinity, 20)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  "Convert",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
