import 'package:flutter/material.dart';
import 'package:flutter_sample/models/user_model.dart';
import 'package:flutter_sample/widgets/widgets.dart';

class ContactsList extends StatelessWidget {
  final List<User> users;
  const ContactsList({
    Key? key,
    required this.users,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 280.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Text(
                'Contacts',
                style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500),
              )),
              Icon(Icons.search, color: Colors.grey[600]),
              const SizedBox(width: 8.0),
              Icon(Icons.more_horiz, color: Colors.grey[600]),
            ],
          ),
          Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: UserCard(user: users[index]),
                  );
                },
                itemCount: users.length),
          ),
        ],
      ),
    );
  }
}
