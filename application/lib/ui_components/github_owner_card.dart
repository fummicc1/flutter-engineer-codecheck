import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class GitHubOwnerCard extends StatelessWidget {
  const GitHubOwnerCard({
    Key? key,
    this.avatarUrl,
    required this.name,
  }) : super(key: key);

  final String? avatarUrl;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: avatarUrl == null
            ? const SizedBox.shrink()
            : CircleAvatar(
                backgroundColor: Colors.transparent,
                foregroundImage: CachedNetworkImageProvider(avatarUrl!),
              ),
        title: Text(name),
      ),
    );
  }
}
