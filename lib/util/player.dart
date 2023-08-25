import 'package:fi/api/client.dart';
import 'package:video_player/video_player.dart';

class UniPlayerController {
  static VideoPlayerController? _instance;

  static Future<VideoPlayerController> initByUrl(String url) async {
    final header = BClient.globalCookie ?? const <String, String>{};
    await _instance?.dispose();
    final ctr =
        VideoPlayerController.networkUrl(Uri.parse(url), httpHeaders: header);
    return ctr.initialize().then((value) {
      _instance = ctr;
      return _instance!;
    });
  }

  static VideoPlayerController getInstance() => _instance!;

}
