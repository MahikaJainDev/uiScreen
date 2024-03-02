import 'package:flutter/material.dart';

class Marketplace extends StatelessWidget {
  const Marketplace({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(color: const Color(0xffe6cfff)),
                  color: const Color(0xfff6effe)),
              child: AspectRatio(
                aspectRatio: 1.0,
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/verified.png',
                                  height: 30.0,
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                const Text(
                                  'Verified Coaching',
                                  maxLines: 2,
                                  softWrap: true,
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                          VerticalDivider(
                            width: 1.0,
                            color: Color(0xffe6cfff),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/save_money.png',
                                  height: 30.0,
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  'Lowest\nPrices',
                                  maxLines: 2,
                                  softWrap: true,
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      height: 0.0,
                      color: Color(0xffe6cfff),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/career_check.png',
                                  height: 30.0,
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  'Free Career Check',
                                  maxLines: 2,
                                  softWrap: true,
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                          VerticalDivider(
                            width: 1.0,
                            color: Color(0xffe6cfff),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/line_chart.png',
                                  height: 30.0,
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  'Progress Tracking',
                                  maxLines: 2,
                                  softWrap: true,
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 200,
            width: 200,
            child: Image.asset(
              'assets/images/banner.png',
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}
