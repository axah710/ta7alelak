import 'package:flutter/material.dart';
import 'package:ta7alelak/widgets/doctors_view_card.dart';

class DoctorsViewListViewBuilder extends StatelessWidget {
  const DoctorsViewListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 8,
      itemBuilder: (
        BuildContext context,
        int index,
      ) {
        return const Column(
          children: [
            DoctorsViewCard(),
            SizedBox(
              height: 7,
            ),
          ],
        );
      },
    );
  }
}
