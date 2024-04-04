import 'package:flutter/material.dart';
import 'package:ta7alelak/widgets/custom_signup_button.dart';

class BookedAppointmentViewBodyCardDetails extends StatelessWidget {
  const BookedAppointmentViewBodyCardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 55,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                        child: Text(
                          "In 3 Days",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.99),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                        child: Text(
                          "Consultation with ",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                        child: Text(
                          "DR. Tranquillie",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.calendar_month,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Dec 8",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.watch_later,
                          color: Colors.white,
                        ),
                        title: Text(
                          "7:00 AM",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                        title: Text(
                          "605 Quitzon Drive",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.phone,
                          color: Colors.white,
                        ),
                        title: Text(
                          "+201155506397",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      CustomSignupButton(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        buttonName: "Reschedule",
                        width: 123,
                        height: 123 / 2,
                        color: Colors.transparent,
                      ),
                    ],
                  );
  }
}