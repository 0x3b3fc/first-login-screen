import 'package:flutter/material.dart';

class UserModel{
  final int ? id;
  final String ? name;
  final String ? phone;

  UserModel({
    @required this.id,
    @required this.name,
    @required this.phone,
});

}

class UsersScreen extends StatelessWidget {
  List<UserModel> users = [
    UserModel(
      id: 1,
      name: 'Abdo Elfallah',
      phone: '+201013936641',
    ),
    UserModel(
      id: 2,
      name: 'Ahmed Elfallah',
      phone: '+201052836641',
    ),
    UserModel(
      id: 3,
      name: 'koko Elfallah',
      phone: '+201051236641',
    ),
    UserModel(
      id: 1,
      name: 'Abdo Elfallah',
      phone: '+201013936641',
    ),
    UserModel(
      id: 2,
      name: 'Ahmed Elfallah',
      phone: '+201052836641',
    ),
    UserModel(
      id: 3,
      name: 'koko Elfallah',
      phone: '+201051236641',
    ),
    UserModel(
      id: 1,
      name: 'Abdo Elfallah',
      phone: '+201013936641',
    ),
    UserModel(
      id: 2,
      name: 'Ahmed Elfallah',
      phone: '+201052836641',
    ),
    UserModel(
      id: 3,
      name: 'koko Elfallah',
      phone: '+201051236641',
    ),
    UserModel(
      id: 1,
      name: 'Abdo Elfallah',
      phone: '+201013936641',
    ),
    UserModel(
      id: 2,
      name: 'Ahmed Elfallah',
      phone: '+201052836641',
    ),
    UserModel(
      id: 3,
      name: 'koko Elfallah',
      phone: '+201051236641',
    ),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users',
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => buildUsersItem(users[index]),
          separatorBuilder: (context, index) => Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 20.0,
            ),
            child: Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey[300],
            ),
          ),
          itemCount: users.length,
      )
    );
  }

  Widget buildUsersItem(UserModel user) => Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 25.0,
          child: Text(
            '${user.id}',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${user.name}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${user.phone}',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
