import 'package:flutter/material.dart';
import 'package:ticket_app/core/res/styles/app_styles.dart';
import 'package:ticket_app/core/widgets/app_layout_builder.dart';
import 'package:ticket_app/core/widgets/big_circle.dart';
import 'package:ticket_app/core/widgets/big_dot.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
        width: size.width + 0.85,
        height: 189,
        child: Container(
          margin: const EdgeInsets.only(right: 16,left: 16),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppStyles.ticketBlue,
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(21),topRight: Radius.circular(21))
                ),
                padding: const EdgeInsets.all(16),
                child:  Column(
                  children: [
                    Row(
                      children: [
                        Text('NYC',style: AppStyles.headlineStyle3.copyWith(color: Colors.white)),
                        Expanded(child: Container()),
                        const BigDot(),
                        Expanded(child: Stack(children: [
                          const SizedBox(
                              height:24,
                              child: AppLayoutBuilder( randomDivider: 6,)
                          ),
                          Center(child: Transform.rotate(angle:1.57,child: const Icon(Icons.local_airport_rounded,color: Colors.white,)),)
                        ],)),
                        const BigDot(),
                        Expanded(child: Container()),
                        Text('LDN',style: AppStyles.headlineStyle3.copyWith(color: Colors.white))
                      ],
                    ),
                    const SizedBox(height: 3),
                    Row(
                      children: [
                        Text('New-York',style: AppStyles.headlineStyle3.copyWith(color: Colors.white)),
                        Expanded(child: Container()),
                        Text('08H 30M',style: AppStyles.headlineStyle3.copyWith(color: Colors.white)),
                        Expanded(child: Container()),
                        Text('London',style: AppStyles.headlineStyle3.copyWith(color: Colors.white))

                      ],
                    )
                  ],
                ),
              ),
              Container(
                color: AppStyles.ticketOrange ,
              child: Row(
                children: [
                    const BigCircle(isRight: true),
                  Expanded(child: Container()),
                  const BigCircle(isRight: false,)
                ],
              ),),
              Container(
                decoration: BoxDecoration(
                  color: AppStyles.ticketOrange,
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(21),bottomRight: Radius.circular(21))
                ),
                padding: const EdgeInsets.all(16),
                child:  Column(
                  children: [
                    Row(
                      children: [
                        Text('NYC',style: AppStyles.headlineStyle3.copyWith(color: Colors.white)),
                        Expanded(child: Container()),
                        const BigDot(),
                        Expanded(child: Stack(children: [
                          const SizedBox(
                              height:24,
                              child: AppLayoutBuilder( randomDivider: 6,)
                          ),
                          Center(child: Transform.rotate(angle:1.57,child: const Icon(Icons.local_airport_rounded,color: Colors.white,)),)
                        ],)),
                        const BigDot(),
                        Expanded(child: Container()),
                        Text('LDN',style: AppStyles.headlineStyle3.copyWith(color: Colors.white))
                      ],
                    ),
                    const SizedBox(height: 3),
                    Row(
                      children: [
                        Text('New-York',style: AppStyles.headlineStyle3.copyWith(color: Colors.white)),
                        Expanded(child: Container()),
                        Text('08H 30M',style: AppStyles.headlineStyle3.copyWith(color: Colors.white)),
                        Expanded(child: Container()),
                        Text('London',style: AppStyles.headlineStyle3.copyWith(color: Colors.white))

                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),

    );
  }
}
