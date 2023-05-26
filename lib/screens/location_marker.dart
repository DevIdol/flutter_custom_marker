import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LocationMarker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 170,
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 0,
            child: SvgPicture.asset(
              'marker.svg',
              width: 144,
              height: 144,
            ),
          ),
          // Center Circular img
          Positioned(
            top: 16,
            child: Container(
              width: 86,
              height: 86,
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              child: ClipOval(
                child: Image.asset(
                  'img.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // CrownBoxShape
          Positioned(
            top: 0,
            right: 30,
            child: SvgPicture.asset(
              'crown.svg',
              width: 50,
              height: 50,
            ),
          ),
        ],
      ),
    );
  }
}
