import 'package:flutter/material.dart';
import 'package:ta7alelak/helpers/constants.dart';
import 'package:ta7alelak/views/doctor_details_view.dart';
import 'package:ta7alelak/widgets/custom_signup_button.dart';

class DoctorsViewCard extends StatelessWidget {
  const DoctorsViewCard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: screenHeight * 0.01,
          horizontal: screenWidth * 0.03,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    right: screenWidth * 0.03,
                  ),
                  child: Image.asset(
                    "assets/images/doctor_3.jpg",
                    width: screenWidth * 0.15,
                    height: screenWidth * 0.15,
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Dr. Tranquilli",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 28,
                          )
                        ],
                      ),
                      const Text(
                        "Specialist Medicine",
                        style: TextStyle(
                          color: kColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Text(
                        "6 Years Experience",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(7),
                              ),
                              height: 7,
                              width: 7,
                            ),
                            const Text(
                              " 59%",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(
                              width: 33,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(7),
                              ),
                              height: 7,
                              width: 7,
                            ),
                            const Text(
                              " 82 Patient Stories",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 16.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Next Available",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: kColor,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "10:00 ",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "AM Tomorrow",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  CustomSignupButton(
                    onTap: () {
                      Navigator.pushNamed(context, DoctorDetailsView.id,);
                    },
                    buttonName: "Book Now",
                    width: screenWidth * 0.3,
                    height: screenHeight * 0.06,
                    color: kColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
