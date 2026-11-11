import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff8f9fa),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              // Top section
              Container(
                height: 180,
                width: double.infinity,

                decoration: BoxDecoration(
                  color: const Color(0xff111827),
                  borderRadius: BorderRadius.circular(30),
                ),

                child: const Padding(
                  padding: EdgeInsets.all(25),

                  child: Text(
                    "Dashboard",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // Wallet and Insights cards
              Row(
                children: [

                  // Wallet Card
                  Expanded(
                    child: DashboardCard(
                      icon: Icons.account_balance_wallet_outlined,
                      title: "Wallet",
                      value: "\$24,500.00",
                    ),
                  ),

                  const SizedBox(width: 24),

                  // Insights Card
                  Expanded(
                    child: DashboardCard(
                      icon: Icons.bar_chart_rounded,
                      title: "Insights",
                      value: "+12% Growth",
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 50),

              // Recent Activity
              const Text(
                "Recent Activity",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff111827),
                ),
              ),

              const SizedBox(height: 20),

              // Activity item
              Container(
                padding: const EdgeInsets.all(20),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),

                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),

                child: const Row(
                  children: [

                    CircleAvatar(
                      backgroundColor: Color(0xfff1f2f4),
                      child: Icon(
                        Icons.shopping_bag_outlined,
                        color: Color(0xff111827),
                      ),
                    ),

                    SizedBox(width: 15),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Recent Transaction",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 5),

                        Text(
                          "Today",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
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
}


/// Reusable Dashboard Card
class DashboardCard extends StatelessWidget {

  final IconData icon;
  final String title;
  final String value;

  const DashboardCard({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 210,

      padding: const EdgeInsets.all(30),

      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius: BorderRadius.circular(30),

        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          // Icon
          Container(
            height: 60,
            width: 60,

            decoration: const BoxDecoration(
              color: Color(0xfff1f2f4),
              shape: BoxShape.circle,
            ),

            child: Icon(
              icon,
              size: 30,
              color: const Color(0xff111827),
            ),
          ),

          const Spacer(),

          // Title
          Text(
            title,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0xff111827),
            ),
          ),

          const SizedBox(height: 5),

          // Value
          Text(
            value,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}