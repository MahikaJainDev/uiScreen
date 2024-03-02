import 'package:flutter/material.dart';

class CareerTrends extends StatelessWidget {
  const CareerTrends({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        height: 300,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Container(
                width: 290,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: Color(0xfff9f9f9),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 0.0,
                      right: 0.0,
                      child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(16.0),
                            topRight: Radius.circular(16.0),
                          ),
                          child: Image.asset(
                            'assets/images/border.png',
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Career Trends',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            'Those who plan ahead hold the key to the future. Construct a strategic career path today.Those who plan ahead hold the key to the future. Construct a strategic career path today.Those who plan ahead hold the key to the future. Construct a strategic career path today.',
                            style: Theme.of(context).textTheme.bodyMedium,
                            maxLines: null,
                            softWrap: true,
                          ),
                          const SizedBox(
                            height: 24.0,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                  ),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xffffffff)),
                                  side: MaterialStateProperty.all(
                                      BorderSide(color: Color(0xff7d23e0)))),
                              child: Text(
                                'Explore Now',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                        color: Color(0xff7d23e0),
                                        fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
