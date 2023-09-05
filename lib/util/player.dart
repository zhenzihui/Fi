import 'package:fi/api/client.dart';
import 'package:video_player/video_player.dart';

class UniPlayerController {
  static VideoPlayerController? _instance;
  // cid: 分p id
  static num? currentCId;

  static Future<VideoPlayerController> initByUrl(String url, num cId) async {
    final header = BClient.globalCookie ?? const <String, String>{};
    await _instance?.dispose();
    final ctr =
        VideoPlayerController.networkUrl(Uri.parse(url), httpHeaders: header);
    return ctr.initialize().then((value) {
      currentCId = cId;
      _instance = ctr;
      return _instance!;
    });
  }

  static dispose() {
    _instance?.dispose();
    currentCId = null;
    _instance = null;
  }

  static VideoPlayerController getInstance() => _instance!;

}
