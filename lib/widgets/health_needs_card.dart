import 'package:flutter/material.dart';

class HealthNeedsCard extends StatelessWidget {
  const HealthNeedsCard({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    List<CustomIcon> customIcons = [
      CustomIcon("assets/appointment.png", "Appointment"),
      CustomIcon("assets/hospital.png", "Hospital"),
      CustomIcon("assets/virus.png", "COVID-19"),
      CustomIcon("assets/more.png", "More"),
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:
        List.generate(customIcons.length , (index) {
          return Column(
            children: [
              Container(
                width: 60,
                height: 60,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.4)
                ),
                child: Image.asset(customIcons[index].icon),
              ),
              const SizedBox(height: 6),
              Text(customIcons[index].name)
            ],
          );
        }),
    );
  }
}

class CustomIcon {
  final String icon;
  final String name;

  CustomIcon(this.icon, this.name);

}
