import 'package:flutter/material.dart';
import 'package:uiscreen/widgets/career_trends.dart';
import 'package:uiscreen/widgets/marketplace.dart';
import 'package:uiscreen/widgets/refer_and_earn.dart';
import 'package:uiscreen/widgets/start_assessment_card.dart';
import 'package:uiscreen/widgets/top_services.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          forceMaterialTransparency: true,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hi Rajbir,',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold
              ),
                textAlign: TextAlign.left,
              ),
              Row(
                children: [
                  Image.asset('assets/images/person.png',
                  height: 20.0,
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Text('Gandhinagar, Ahmedabad...',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(

                    ),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Image.asset('assets/images/down_arrow.png',
                  height: 8.0,
                  )
                ],
              ),
            ],
          ),
          actions: [
            Row(
              children: [
                Stack(
                  children: [
                    Image.asset('assets/images/Subtract.png',
                    height: 25.0,
                    ),
                    Positioned(
                      top: 4.0,
                      left: 4.0,
                      child: Row(
                        children: [
                          Image.asset('assets/images/coin.png',
                          height: 16.0,
                          ),
                          const SizedBox(
                            width: 3.0,
                          ),
                          Text('3500',
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Color(0xffffffff)
                          ),
                          ),
                          ],
                      ),
                    )
                  ],
                ),
                Image.asset('assets/images/Img.png',
                  height: 40.0,
                ),
                const SizedBox(
                  width: 16.0,
                )
              ],
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 1.0,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    spreadRadius: 0.0,
                    blurRadius: 1.0,
                   )
                ]
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    StartAssessmentCard(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'Top Services',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    TopServices(),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Card(
                        color: Color(0xffFFFFFF),
                        // decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.circular(15.0),
                        //   color: Color(0xffFFFFFF),
                        //),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Refer & Earn',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(fontWeight: FontWeight.bold)),
                                  Text(
                                    'Invite a friend to ostello and\nearn ₹1000 worth coins.',
                                    style: Theme.of(context).textTheme.bodyMedium,
                                    maxLines: 2,
                                  ),
                                ],
                              ),
                              Image.asset(
                                'assets/images/refer&earn.png',
                                height: 100.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'Marketplace',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Marketplace(),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ReferAndEarn(),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Quick Info.',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    CareerTrends(),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            color: const Color(0xfff2f7fb),
                            border: Border.all(color: Color(0xffd2ebff))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Guiding you through the maze of choices!',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge
                                          ?.copyWith(
                                              color: const Color(0xff757575),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),
                                      maxLines: null,
                                      softWrap: true,
                                    ),
                                  ),
                                  Image.asset(
                                    'assets/images/saly.png',
                                    height: 150.0,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 0.0
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xffd2ebff),
                                borderRadius: BorderRadius.vertical(
                                  bottom: Radius.circular(16.0)
                                ),
                              ),
                              child: Text(
                                '9k+ Students are using the platform to upgrade there career',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
