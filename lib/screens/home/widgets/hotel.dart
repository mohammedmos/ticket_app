import 'package:flutter/material.dart';
import 'package:ticket_app/core/res/media.dart';
import 'package:ticket_app/core/res/styles/app_styles.dart';

class Hotel extends StatelessWidget {
  final Map<String,dynamic> hotel;

  const Hotel({super.key, required this.hotel});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return  Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.only(right: 16),
      width: size.width * 0.6,
      height: 350,
      decoration: BoxDecoration(
          color: AppStyles.primary,
          borderRadius: BorderRadius.circular(24)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                color: AppStyles.primary,
                borderRadius: BorderRadius.circular(24),
              image: DecorationImage(image: AssetImage("assets/images/${hotel['image']}"),fit: BoxFit.cover)
            ),
          ),
          const SizedBox(height: 10),
          Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(hotel['place'],style: AppStyles.headlineStyle1.copyWith(color: AppStyles.kakiColor))
          ),
          const SizedBox(height: 5),
          Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(hotel['destination'],style: AppStyles.headlineStyle3.copyWith(color: Colors.white))
          ),
          const SizedBox(height: 5),
          Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text('\$${hotel['price']}/Night ',style: AppStyles.headlineStyle1.copyWith(color: AppStyles.kakiColor))
          ),
        ],
      ),
    );
  }
}
