import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/get_utils/src/platform/platform_web.dart';
import 'package:test_app/models/comment.dart';

class CommentController extends GetxController {
  List<CommentModel> comments = [
    CommentModel(
      id: "fkdfdfkdfkdfdffd434",
      profileUrl:
          "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
      handleName: "art_explorer",
      message: "The visuals in this video are stunning! ",
      postedOn: DateTime.now(),
    ),
    CommentModel(
      id: "fkdfdfkdfkdfdffd434",
      profileUrl:
          "https://images.pexels.com/photos/9559725/pexels-photo-9559725.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
      handleName: "coding_ninja",
      message:
          "This tutorial helped me fix a bug I've been struggling with for days! ",
      postedOn: DateTime.now(),
    ),
    CommentModel(
      id: "fkdfdfkdfkdfdffd434",
      profileUrl:
          "https://images.unsplash.com/photo-1565464027546-b28f40a0ae35?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
      handleName: "bookworm_101",
      message:
          "I love how this video breaks down complex concepts into easy-to-understand steps. ",
      postedOn: DateTime.now(),
      replies: [
        Reply(
          id: "fkdfdfkdfkdfdffd434",
          profileUrl:
              "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
          handleName: "curiom idid",
          message:
              "Totally agree! I'm already feeling more confident about the material. ",
          postedOn: DateTime.now(),
        ),
        Reply(
          id: "fkdfdfkdfkdfdffd434",
          profileUrl:
              "https://images.pexels.com/photos/9559725/pexels-photo-9559725.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
          handleName: "fdfddffd ff",
          message:
              " agree! I'm already feeling more smart about the material. ",
          postedOn: DateTime.now(),
        ),
        Reply(
          id: "fkdfdfkdfkdfdffd434",
          profileUrl:
              "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
          handleName: "bongo ideas",
          message:
              "THis GuyI'm already feeling more confident about the material. ",
          postedOn: DateTime.now(),
        ),
      ],
    ),
    CommentModel(
      id: "fkdfdfkdfkdfdffd434",
      profileUrl:
          "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=800",
      handleName: "guitar_geek",
      message:
          "That guitar riff in the background is ! Anyone know the song name?",
      postedOn: DateTime.now(),
    ),
  ].cast<CommentModel>().obs;

  Future<List<CommentModel>> getComment(String videoId) async {
    return comments;
  }

  addComment(String message) {
    CommentModel comment = CommentModel(
        id: "43jjerje",
        profileUrl:
            "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=800",
        handleName: "handleName",
        message: message,
        postedOn: DateTime.now());
    comments.add(comment);
    update();
  }
}
