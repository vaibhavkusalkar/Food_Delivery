import 'package:flutter/material.dart';
import 'package:food_delivery/data/models/data_model.dart';

class CuisineCard extends StatelessWidget {
  const CuisineCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          //mainAxisSpacing: ,
          crossAxisSpacing: 20,
          maxCrossAxisExtent: 110,
          childAspectRatio: 0.98
        ),
        itemCount: cuisines.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 14.0,top: 5,bottom: 5),
            child: Card(
              color: Colors.white,
              elevation: 0,
              child: Transform.scale(
                scale: 1.4,
                child: Center(
                  child: Image(
                      image: NetworkImage(
                        cuisines[index].image
                      ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
