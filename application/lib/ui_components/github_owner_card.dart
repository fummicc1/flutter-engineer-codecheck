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
  final maxImageSize = 32;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        avatarUrl == null
            ? const SizedBox.shrink()
            : Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  foregroundImage: CachedNetworkImageProvider(
                    avatarUrl!,
                    maxHeight: maxImageSize,
                    maxWidth: maxImageSize,
                  ),
                ),
              ),
        Text(name),
      ],
    );
  }
}
