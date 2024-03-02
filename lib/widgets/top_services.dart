import 'package:flutter/material.dart';

class TopServices extends StatelessWidget {
  const TopServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
              left: 16.0,
          right: 16.0,
            top: 8.0
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/images/career_trends.png',
                height: MediaQuery.of(context).size.width * 0.4,
              ),
              Image.asset(
                'assets/images/scholarships.png',
                height: MediaQuery.of(context).size.width * 0.4,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: const Color(0xfff6effe),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your Career Roadmap',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            'Those who plan ahead hold the key to the future. Construct a.',
                            maxLines: null,
                            softWrap: true,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: ElevatedButton.icon(
                              onPressed: () {},
                              icon: const Icon(Icons.navigate_before),
                              label: Text(
                                'Create Now',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                        color: const Color(0xff7d23e0),
                                        fontWeight: FontWeight.bold),
                              ),
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                  ),
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color(0xfff6effe)),
                                  side: MaterialStateProperty.all(
                                      const BorderSide(color: Color(0xff7d23e0)))),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      height: 150.0,
                      width: 200.0,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Positioned(
                            right: 0.0,
                            bottom: 0.0,
                            child: Container(
                              height: 80.0,
                              width: 100.0,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(16.0)
                                ),
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/ellipse1.png"
                                  ),
                                  fit: BoxFit.fill
                                )
                              ),
                            ),
                          ),
                          Positioned(
                            right: 24.0,
                            bottom: 24.0,
                            child: Image.asset(
                              "assets/images/arrows.png",
                              height: 90,
                            )
                          )

                          // Positioned(
                          //   bottom: 0.0,
                          //   right: 0.0,
                          //   child: Image.asset(
                          //     'assets/images/ellipse1.png',
                          //     height: 100.0,
                          //   ),
                          // ),
                          // Image.asset(
                          //   '',
                          //   height: 65,
                          // )
                        ],
                      ),
                    ),
                  )
                ],
              )),
        ),
      ],
    );
  }
}
