import 'package:flutter/material.dart';
import 'package:ta7alelak/widgets/custom_signup_text_field.dart';

class BookAppointmentViewBodyCard extends StatelessWidget {
  const BookAppointmentViewBodyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.11),
            blurRadius: 4,
            spreadRadius: 2,
          ),
        ],
      ),
      height: 500,
      width: 321,
      child: Card(
        color: Colors.white,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.only(left: 14, right: 14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 72,
              ),
              CustomSignupTextFormField(
                onChanged: (value) {},
                enabledBorderSideColor: Colors.grey.withOpacity(0.44),
                hintText: 'Full Name',
                fillColor: Colors.white,
                hintColor: Colors.black,
              ),
              const SizedBox(
                height: 27,
              ),
              CustomSignupTextFormField(
                onChanged: (value) {},
                enabledBorderSideColor: Colors.grey.withOpacity(0.44),
                hintText: "Phone Number",
                fillColor: Colors.white,
                hintColor: Colors.black,
              ),
              const SizedBox(
                height: 27,
              ),
              CustomSignupTextFormField(
                onChanged: (value) {},
                enabledBorderSideColor: Colors.grey.withOpacity(0.44),
                hintText: 'Address',
                fillColor: Colors.white,
                hintColor: Colors.black,
              ),
              const SizedBox(
                height: 27,
              ),
              CustomSignupTextFormField(
                onChanged: (value) {},
                enabledBorderSideColor: Colors.grey.withOpacity(0.44),
                hintText: 'Age',
                fillColor: Colors.white,
                hintColor: Colors.black,
              ),
              const SizedBox(
                height: 27,
              ),
              CustomSignupTextFormField(
                onChanged: (value) {},
                hintText: 'Comment',
                fillColor: Colors.white,
                hintColor: Colors.black,
                enabledBorderSideColor: Colors.grey.withOpacity(0.44),
              ),
              const SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
