import 'package:flutter/material.dart';

class StartAssessmentCard extends StatelessWidget {
  const StartAssessmentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: const Color(0xff7D23E0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0),
                  ),
                  child: Image.asset(
                    'assets/images/rectangle.png',
                    fit: BoxFit.contain,
                  ),
                ),
                Image.asset('assets/images/robot.png'),
                Positioned(
                    top: 230.0,
                    right: 0.0,
                    left: 0.0,
                    child: Image.asset('assets/images/ellipse.png')),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: 'No Guessing, Just Knowing: Your ',
                        ),
                        TextSpan(
                          text: ' Career Path ',
                          style: TextStyle(
                            background: Paint()..color = Colors.amberAccent,
                            color: const Color(0xff7D23E0)
                          ),
                        ),
                        const TextSpan(
                          text: ' Awaits!',
                        ),
                      ],
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  // Text(
                  //   'No Guessing, Just Knowing:',
                  //   style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  //         color: const Color(0xffffffff),
                  //       ),
                  //   textAlign: TextAlign.center,
                  // ),
                  // Text(
                  //   '',
                  //   style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  //         color: const Color(0xffffffff),
                  //       ),
                  //   textAlign: TextAlign.center,
                  // ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    'Unlock your potential and get an instant report on customised career',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: const Color(0xffffffff),
                        ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)))),
                      child: Text(
                        'Start Assessment',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(fontWeight: FontWeight.w800),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
