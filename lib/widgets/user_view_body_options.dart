
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ta7alelak/cubits/auth_cubit/auth_cubit.dart';
import 'package:ta7alelak/views/booked_appointment_view.dart';
import 'package:ta7alelak/widgets/user_view_body_list_tile.dart';

class UserViewBodyOptions extends StatelessWidget {
  const UserViewBodyOptions({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Column(
        children: [
          const UserViewBodyListTile(
            data: "Edit Profile",
            icon: Icons.person,
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          UserViewBodyListTile(
            data: "Last Booked Appointment",
            icon: Icons.date_range,
            onTap: () => Navigator.pushNamed(
              context,
              BookedAppointmentView.id,
            ),
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          const UserViewBodyListTile(
            data: "Notifications",
            icon: Icons.notifications,
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          const UserViewBodyListTile(
            data: "Settings",
            icon: Icons.settings,
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          UserViewBodyListTile(
            data: "Log Out",
            icon: Icons.logout,
            onTap: () async {
              await BlocProvider.of<AuthCubit>(context).signOut();
         
            },
          ),
        ],
      ),
    );
  }
}
