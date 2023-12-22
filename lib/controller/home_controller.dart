import 'package:get/get.dart';
import 'package:test_app/models/video.dart';

class HomeController extends GetxController {
  List<VideoModel> video = [].cast<VideoModel>().obs;

  @override
  void onInit() {
    // TODO: implement onInit

    video = [
      VideoModel(
          id: "2",
          commentCount: 20,
          favoriteCount: 40,
          postedOn: DateTime.now(),
          videoUrl:
              "https://sneg.top/uploads/posts/2023-04/1680868032_sneg-top-p-demokratiya-kartinki-pinterest-18.jpg",
          heading:
              "Trump Victory is on the way and america will exopereince economic growth unimagenable with a split  second",
          description: "Former President"),
      VideoModel(
          id: "3",
          commentCount: 40,
          favoriteCount: 60,
          postedOn: DateTime.now(),
          videoUrl:
              "https://sneg.top/uploads/posts/2023-04/1680868032_sneg-top-p-demokratiya-kartinki-pinterest-18.jpg",
          heading: "Biden Victory",
          description: "Former President"),
      VideoModel(
          id: "4",
          commentCount: 50,
          favoriteCount: 30,
          postedOn: DateTime.now(),
          videoUrl:
              "https://sneg.top/uploads/posts/2023-04/1680868032_sneg-top-p-demokratiya-kartinki-pinterest-18.jpg",
          heading: "Nana addo Victory",
          description: "Former President")
    ];
    super.onInit();
  }

  void increaseFavoriteCountById(String id, isLkie) {
    final index = video.indexWhere((video) => video.id == id);
    if (index != -1) {
      // Increment the favorite count if the video is found else decress
      if (isLkie) {
        video[index].favoriteCount = video[index].favoriteCount + 1;
      } else {
        video[index].favoriteCount = video[index].favoriteCount - 1;
      }
    
      // call api the listen to response
    }
     update();
  }
}
