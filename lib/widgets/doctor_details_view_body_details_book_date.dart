import 'package:flutter/material.dart';
import 'package:ta7alelak/helpers/constants.dart';

class DoctorDetailsViewBodyDetailsBookDateCard extends StatelessWidget {
  const DoctorDetailsViewBodyDetailsBookDateCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                  height: 70,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 7,
                    itemBuilder: ((context, index) {
                      return GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                                vertical: 4.0,
                              ),
                              padding: const EdgeInsets.symmetric(
                                vertical: 4.0,
                                horizontal: 20.0,
                              ),
                              decoration: BoxDecoration(
                                  color: index == 1
                                      ? kColor.withOpacity(0.55)
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: kColor.withOpacity(0.21),
                                      blurRadius: 4,
                                      spreadRadius: 2,
                                    ),
                                  ]),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "${index + 7}",
                                    style: TextStyle(
                                      color: index == 1
                                          ? Colors.white
                                          : kColor.withOpacity(0.55),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Dec",
                                    style: TextStyle(
                                      color: index == 1
                                          ? Colors.white
                                          : kColor.withOpacity(0.55),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                );
  }
}