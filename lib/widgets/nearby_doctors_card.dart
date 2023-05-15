import 'package:flutter/material.dart';
import 'package:health_app_ui/models/doctors_model.dart';
import 'package:ionicons/ionicons.dart';

class NearbyDoctors extends StatelessWidget {
  const NearbyDoctors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(nearbyDoctors.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage(nearbyDoctors[index].profileImage),fit: BoxFit.cover)
                ),
              ),
              const SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(nearbyDoctors[index].name,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ),
                  Text(nearbyDoctors[index].position),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Icon(Ionicons.star,color: Colors.yellow[700],size: 18,),
                      Padding(padding: const EdgeInsets.only(left: 4,right: 6),child: Text('${nearbyDoctors[index].averageRatting}.0',style: TextStyle(fontWeight: FontWeight.bold),),),
                      Text('${nearbyDoctors[index].totalReviews} Reviews')
                    ],
                  )
                ],
              )
            ],
          ),
        );
      }),
    );
  }
}
