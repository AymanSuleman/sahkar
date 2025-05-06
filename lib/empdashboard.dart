import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sahkar/app_theme.dart';

class DashboardScreen extends StatelessWidget {
  final String userName;

  const DashboardScreen({Key? key, required this.userName}) : super(key: key);

  String getFormattedDate() {
    final now = DateTime.now();
    return DateFormat('EEEE, dd MMM yyyy').format(now);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryMedium,
      body: Column(
        children: [
          // Rounded container on top
          Container(
            height: 400,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: AppColors.primaryDark,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            padding: const EdgeInsets.only(top:  AppSpacing.padding ,left: AppSpacing.padding, right: AppSpacing.padding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hello, $userName", style: AppTextStyles.heading),
                const SizedBox(height: 4),
                Text(getFormattedDate(), style: AppTextStyles.subheading),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        print("Total Lead clicked");
                      },
                      child: _buildLeadCard("00", "total\nLead"),
                    ),
                    GestureDetector(
                      onTap: () {
                        print("Approval Lead clicked");
                      },
                      child: _buildLeadCard("00", "Approval\nLead"),
                    ),
                    GestureDetector(
                      onTap: () {
                        print("Reject Lead clicked");
                      },
                      child: _buildLeadCard("29", "Reject\nLead"),
                    ),
                  ],
                ),
              ],
            ),
          ),
      
          const SizedBox(height: 40),
      
          // Grid of menu buttons
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.padding , vertical: AppSpacing.verticalPadding),
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                children: [
                  _buildMenuButton(Icons.verified_user, "Insurance"),
                  _buildMenuButton(Icons.house, "Loan"),
                  _buildMenuButton(Icons.account_balance_wallet, "Payout"),
                  _buildMenuButton(Icons.person, "Profile"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLeadCard(String count, String label) {
    return Column(
      children: [
        Text(count, style: AppTextStyles.leadCount),
        const SizedBox(height: 4),
        Text(
          label,
          textAlign: TextAlign.center,
          style: AppTextStyles.leadLabel,
        ),
      ],
    );
  }

  Widget _buildMenuButton(IconData icon, String title) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.cardLight,
        borderRadius: BorderRadius.circular(AppSpacing.radius),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: AppColors.primaryDark, size: AppSpacing.iconSize),
            const SizedBox(height: 10),
            Text(title, style: AppTextStyles.menuTitle),
          ],
        ),
      ),
    );
  }
}
