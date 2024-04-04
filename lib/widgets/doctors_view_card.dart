import 'package:flutter/material.dart';
import 'package:ta7alelak/helpers/constants.dart';
import 'package:ta7alelak/views/doctor_details_view.dart';
import 'package:ta7alelak/widgets/custom_signup_button.dart';

class DoctorsViewCard extends StatelessWidget {
  const DoctorsViewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  top: 12.0,
                ),
                child: Image.asset(
                  "assets/images/doctor_3.jpg",
                  width: 75,
                  height: 75,
                ),
              ),
              const SizedBox(
                width: 11,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Row(
                      children: [
                        Text(
                          "Dr.Tranquilli",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 121,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 6),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 28,
                          ),
                        )
                      ],
                    ),
                  ),
                  const Text(
                    "Specilist Medicine",
                    style: TextStyle(
                      color: kColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    "6 Years Experince",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8.0,
                    ),
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
                  )
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 12.0,
              top: 16.0,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                          "AM Tommorrow",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  width: 73,
                ),
                CustomSignupButton(
                  onTap: () {
                    Navigator.pushNamed(context, DoctorDetailsView.id);
                  },
                  buttonName: "Book Now",
                  width: 111,
                  height: 44,
                  color: kColor,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
