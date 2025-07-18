import 'package:flutter/material.dart';
import 'package:whoishe/constants/colors.dart';

class UserProfilePicture extends StatelessWidget {
  const UserProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey.withValues(alpha: .3),
          backgroundImage: const AssetImage('assets/img/default.png'),
          radius: MediaQuery.of(context).size.width * .17,
        ),
        Positioned(
          bottom: 2,
          right: 0,
          child: Container(
            decoration: const BoxDecoration(
                color: kPrimaryColor, shape: BoxShape.circle),
            height: 45.0,
            width: 45.0,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add_a_photo,
                  color: Colors.white,
                )),
          ),
        ),
      ],
    );
  }
}
