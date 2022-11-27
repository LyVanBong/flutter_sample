import 'dart:developer';

import 'package:flutter/material.dart';

class ProfileUi extends StatelessWidget {
  const ProfileUi({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Image(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1562737794-88835094442e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1230&q=80')),
            const Positioned(
                bottom: -50,
                child: CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      'https://www.london-fire.gov.uk/media/4613/london-fire-brigade-tim-powel-director-of-people.jpg'),
                ))
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        const ListTile(
          title: Center(child: Text('Abdul Aziz Ahwan')),
          subtitle: Center(child: Text('asdf asdfasdf')),
        ),
        TextButton.icon(
          onPressed: () {
            log('Button Pressed: ${DateTime.now()}');
          },
          label: const Text('Hire Me'),
          icon: const Icon(Icons.email),
          style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
        ),
        const ListTile(
          title: Text('About Me'),
          subtitle: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, nisl vel tincidunt lacinia, nunc nisl aliquam mauris, eget aliquam nisl nunc vel mauris. Sed euismod, nisl vel tincidunt lacinia, nunc nisl aliquam mauris, eget aliquam nisl nunc vel mauris.'),
        ),
      ],
    );
  }
}
