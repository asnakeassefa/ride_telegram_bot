import 'package:commercepal/core/core-utils/core_utils.dart';
import 'package:injectable/injectable.dart';
import 'package:url_launcher/url_launcher.dart';

@Injectable(as: CoreUtils)
class CoreUtilsImpl implements CoreUtils {
  @override
  Future openWebLink(String link) async {
    if (!await launchUrl(Uri.parse(link))) {
      throw Exception('Could not launch $link');
    }
  }
}
