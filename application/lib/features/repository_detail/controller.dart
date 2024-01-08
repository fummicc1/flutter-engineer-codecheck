import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:url_launcher/url_launcher.dart';

part 'controller.g.dart';

@riverpod
RepositoryDetailController repositoryDetailController(
        AutoDisposeProviderRef ref) =>
    RepositoryDetailController();

class RepositoryDetailController {
  Future<void> onPressedReadMeLink(
      {required String text, required String? href}) async {
    if (href == null) {
      return;
    }
    final url = Uri.parse(href);
    const supportedSchemes = [
      'https',
      "tel",
      "sms",
    ];
    if (kDebugMode) {
      print('onPressedReadMeLink: $url');
    }
    if (!supportedSchemes.contains(url.scheme)) {
      return;
    }
    if (await canLaunchUrl(url)) {
      return;
    }
    await launchUrl(url);
  }
}
