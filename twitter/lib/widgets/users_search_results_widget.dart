import 'package:flutter/material.dart';

class UsersSearchResultsWidget extends StatelessWidget {
  final String name;
  final String username;
  final String imgUrl;

  const UsersSearchResultsWidget({
    Key? key,
    required this.name,
    required this.username,
    required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage(imgUrl),
          ),
          const SizedBox(width: 20.0),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                '@$username',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Users Search Results'),
      ),
      body: const Center(
        child: UsersSearchResultsWidget(
          name: 'John Moe',
          username: 'johndoe',
          imgUrl: 'https://picsum.photos/200',
        ),
      ),
    ),
  ));
}
