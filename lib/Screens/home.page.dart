import 'package:flutter/material.dart';
import 'package:languageapp/Screens/Numbers.page.dart';
import 'package:languageapp/Screens/colorpage.dart';
import 'package:languageapp/Screens/familypages.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffFF512F), Color(0xffDD2476)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 20),

              // 🔥 Title
              const Text(
                "Japanese Language",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                "Choose a category to start learning",
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),

              const SizedBox(height: 30),

              // 📚 Categories
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  children: [
                    _buildCard(
                      context,
                      title: "Numbers",
                      icon: Icons.calculate,
                      color: Colors.brown.shade800,
                      page: NumbersPage(),
                    ),

                    _buildCard(
                      context,
                      title: "Family Members",
                      icon: Icons.people,
                      color: Colors.blue.shade700,
                      page: Family(),
                    ),

                    _buildCard(
                      context,
                      title: "Colors",
                      icon: Icons.palette,
                      color: Colors.purple.shade700,
                      page: ColorsPage(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard(
    BuildContext context, {
    required String title,
    required IconData icon,
    required Color color,
    required Widget page,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => page));
        },
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Row(
            children: [
              const SizedBox(width: 20),
              Icon(icon, color: Colors.white, size: 30),
              const SizedBox(width: 20),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 18,
              ),
              const SizedBox(width: 20),
            ],
          ),
        ),
      ),
    );
  }
}
