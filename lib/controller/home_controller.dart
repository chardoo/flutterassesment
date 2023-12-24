import 'package:get/get.dart';
import 'package:test_app/models/feed.dart';

class HomeController extends GetxController {
  List<FeedModel> feeds = [].cast<FeedModel>().obs;

  @override
  void onInit() {
    // TODO: implement onInit

    feeds = [
      FeedModel(
         profileImageUrl: 'https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
         handleName: 'CoronaVirus',
          author: 'by unicorm travle and tour',
          isLike: true,
          id: "2",
          commentCount: 20,
          favoriteCount: 40,
          postedOn: DateTime.now(),
          videoUrl:
              "https://sneg.top/uploads/posts/2023-04/1680868032_sneg-top-p-demokratiya-kartinki-pinterest-18.jpg",
          heading:
              "Trump Victory is on the way and america will exopereince economic growth unimagenable with a split  second",
          description: "Former President"),
      FeedModel(
         profileImageUrl: 'https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
         handleName: 'PolioVirus',
          author: 'by unicorm travle and tour',
          isLike: true,
          id: "3",
          commentCount: 40,
          favoriteCount: 60,
          postedOn: DateTime.now(),
          videoUrl:
              "https://sneg.top/uploads/posts/2023-04/1680868032_sneg-top-p-demokratiya-kartinki-pinterest-18.jpg",
          heading: "Biden Victory",
          description: "Former President"),
      FeedModel(
         profileImageUrl: 'https://baconmockup.com/250/250/',
         handleName: 'CoronaVirus',
            author: 'by unicorm travle and tour',
          isLike: false,
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
    final index = feeds.indexWhere((video) => video.id == id);
    if (index != -1) {
      // Increment the favorite count if the video is found else decress
      if (isLkie) {
        feeds[index].favoriteCount = feeds[index].favoriteCount + 1;
        feeds[index].isLike = true;
      } else {
         feeds[index].isLike = false;
        feeds[index].favoriteCount = feeds[index].favoriteCount - 1;
      }
    // make api call 
    }
    update();
  }
}
