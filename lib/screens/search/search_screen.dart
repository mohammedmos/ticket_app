import 'package:flutter/material.dart';
import 'package:ticket_app/core/res/styles/app_styles.dart';
import 'package:ticket_app/screens/search/widgets/ticket_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgPrimaryColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          children: [
            const SizedBox(height: 40),
            Text("What are\nyou looking for?",style: AppStyles.headlineStyle1.copyWith(fontSize: 35)),
            const SizedBox(height: 20),
            const TicketTabs(),
          ],
      ),
    );
  }
}
