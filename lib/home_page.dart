import 'package:flutter/material.dart';
import 'newpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50, // Light soft background

      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          "Home Page",
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Flutter Icon
            const Icon(
              Icons.flutter_dash,
              size: 110,
              color: Colors.blue,
            ),

            const SizedBox(height: 25),

            // Hello Text
            const Text(
              "Hello Everyone",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),

            const SizedBox(height: 10),

            // Welcome text
            const Text(
              "Welcome to Flutter",
              style: TextStyle(
                fontSize: 22,
                color: Colors.blueGrey,
                fontWeight: FontWeight.w500,
              ),
            ),

            const SizedBox(height: 20),

            // Name Text
            const Text(
              "Myself BuShrA",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.purple,   // Purple color
              ),
            ),

            const SizedBox(height: 40),

            // Stylish Navigation Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NewPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(
                  horizontal: 35,
                  vertical: 14,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 5,
              ),
              child: const Text(
                "Go To New Page",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
