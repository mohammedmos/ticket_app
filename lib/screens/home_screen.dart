import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/core/res/media.dart';
import 'package:ticket_app/core/res/styles/app_styles.dart';
import 'package:ticket_app/core/widgets/app_double_text.dart';
import 'package:ticket_app/core/widgets/ticket_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgPrimaryColor,
      body: ListView(
        children: [
          const SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Good morning.',style: AppStyles.headlineStyle3),
                        const SizedBox(height: 5),
                        Text('Book tickets',style: AppStyles.headlineStyle1),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(image: AssetImage(AppMedia.logo))
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20,),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F6FD)
                  ),
                  child: Row(

                    children: [
                      Icon(FluentSystemIcons.ic_fluent_search_regular,color: AppStyles.primary,),
                      const Text('Search'),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                const AppDoubleText($bigText:'Upcoming Flights',$smallText:'View all'),
                const SizedBox(height: 20),
                const TicketView()
              ],
            ),
          ),
                 ],
      ),
    );
  }
}
