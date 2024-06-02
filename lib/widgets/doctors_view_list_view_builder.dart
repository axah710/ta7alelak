import 'package:flutter/material.dart';
import 'package:ta7alelak/widgets/doctors_view_card.dart';

class DoctorsViewListViewBuilder extends StatelessWidget {
  const DoctorsViewListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 8,
      itemBuilder: (
        BuildContext context,
        int index,
      ) {
        return Column(
          children: [
            SizedBox(
              height: 190,
              width: screenWidth,
              child: const DoctorsViewCard(),
            ),
            const SizedBox(
              height: 7,
            ),
          ],
        );
      },
    );
  }
}
