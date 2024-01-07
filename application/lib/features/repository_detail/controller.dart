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
    await launchUrl(Uri.parse(href));
  }
}
