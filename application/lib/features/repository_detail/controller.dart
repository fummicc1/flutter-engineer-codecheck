import 'package:application/models/repository_readme.model.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:url_launcher/url_launcher.dart';

part 'controller.g.dart';

@riverpod
RepositoryDetailController repositoryDetailController(
        AutoDisposeProviderRef ref, RepositoryReadMe readMe) =>
    RepositoryDetailController(
      readMe: readMe,
    );

class RepositoryDetailController {
  final RepositoryReadMe readMe;

  RepositoryDetailController({required this.readMe});

  Future<void> onPressedReadMeLink(
      {required String text, required String? href}) async {
    if (href == null) {
      return;
    }
    const supportedSchemes = [
      'https',
      "tel",
      "sms",
    ];
    final Uri url;
    if (supportedSchemes.contains(href.split(":").first)) {
      url = Uri.parse(href);
    } else {
      // #タグがある場合はREADME.mdのコンテンツを開く
      if (href.startsWith("#")) {
        url = Uri.parse(readMe.contentUrl + href);
      } else {
        return;
      }
    }
    if (kDebugMode) {
      print('onPressedReadMeLink: $url');
    }
    await launchUrl(url);
  }

  Future<void> launchRepositoryUrl() async {
    final url = Uri.parse(readMe.repoUrl);
    await launchUrl(url);
  }
}
