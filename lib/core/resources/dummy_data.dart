import 'package:reddit/core/resources/assets_manager.dart';
import 'package:reddit/features/posts/data/models/author_model.dart';
import 'package:reddit/features/posts/data/models/category_model.dart';
import 'package:reddit/features/posts/data/models/comment_model.dart';
import 'package:reddit/features/posts/data/models/video_model.dart';
import 'package:reddit/features/posts/data/models/vote_type.dart';

CategoryModel categoryModel = CategoryModel(
  id: 1,
  name: 'BeAmazed',
  image:
      'https://styles.redditmedia.com/t5_363r3/styles/communityIcon_8ve5xewye8461.png?width=256&s=a82425e9718e43411556f8fd9732a80b55eb478d',
);
List<VideoModel> videoModelList = [
  VideoModel(
    id: '1',
    title: 'In the 1970s, North Korea ordered 1,000 Volvo cars from Sweden, as a response to its emerging economy. ',
    videoUrl: AssetsManager.video1,
    commentsCount: "798",
    likesCount: "2.8k",
    voteType: VoteType.none,
    author: AuthorModel(
      id: '1',
      name: 'John Doe',
      avatar:
          'https://cdn.pixabay.com/photo/2018/02/16/14/38/portrait-3157821_1280.jpg',
    ),
  ),
  VideoModel(
    id: '2',
    title: 'What is your favorite and least favorite elements in skating? (Aesthetically/as a fan)',
    videoUrl: AssetsManager.video2,
    commentsCount: "255",
    likesCount: "50k",
    voteType: VoteType.none,
    author: AuthorModel(
      id: '1',
      name: 'Micheal',
      avatar:
          'https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358__480.jpg',
    ),
  ),
  VideoModel(
    id: '3',
    title: 'Playing the keyboard - good choice of instrument?',
    videoUrl: AssetsManager.video3,
    commentsCount: "999",
    likesCount: "30k",
    voteType: VoteType.none,
    author: AuthorModel(
      id: '1',
      name: 'Julia Morgan',
      avatar:
          'https://cdn.pixabay.com/photo/2018/01/06/09/25/hijab-3064633_1280.jpg',
    ),
  ),
];

List<CommentModel> comments = [
  CommentModel(
    id: "1",
    comment:
        'lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    author: AuthorModel(
      id: '1',
      name: 'Jamila Tafraouti',
      avatar:
          'https://cdn.pixabay.com/photo/2018/01/06/09/25/hijab-3064633_1280.jpg',
    ),
    createdAt: '7h',
    voteCount: 11,
    voteType: VoteType.none,
    replay: CommentModel(
      id: "22",
      comment: 'Best comment ever in the world',
      author: AuthorModel(
          id: '1',
          name: 'Adam Smith',
          avatar:
              'https://cdn.pixabay.com/photo/2018/02/16/14/38/portrait-3157821_1280.jpg'),
      createdAt: '4h',
      voteCount: 4,
      voteType: VoteType.none,
      replay: CommentModel(
        id: "333333",
        comment: 'Good comment',
        author: AuthorModel(
          id: '1',
          name: 'Hassan Ali',
          avatar:
              'https://cdn.pixabay.com/photo/2014/11/30/14/11/cat-551554_1280.jpg',
        ),
        createdAt: '1h',
        voteCount: 1,
        voteType: VoteType.none,
        replay: CommentModel(
          id: "4444",
          comment: 'Never seen a comment like this before in my life',
          author: AuthorModel(
            id: '1',
            name: 'Rachid Nadori',
            avatar:
                'https://cdn.pixabay.com/photo/2016/11/14/03/46/girl-1822525_640.jpg',
          ),
          createdAt: '1h',
          voteCount: 1,
          voteType: VoteType.none,
        ),
      ),
    ),
  ),
  CommentModel(
    id: "2",
    comment: 'thank you for reading this comment , i hope you like it',
    author: AuthorModel(
      id: '1',
      name: 'Agatha Christie',
      avatar:
          'https://cdn.pixabay.com/photo/2017/08/30/12/45/girl-2696947_1280.jpg',
    ),
    createdAt: '5h',
    voteCount: 1,
    voteType: VoteType.none,
  ),
  CommentModel(
    id: "3",
    comment:
        'Im the best Football player in the world , and i will always be the best',
    author: AuthorModel(
      id: '1',
      name: 'Criatiano Ronaldo',
      avatar:
          'https://cdn.pixabay.com/photo/2016/09/09/13/56/football-1657207_640.jpg',
    ),
    createdAt: '1d',
    voteCount: 1,
    voteType: VoteType.none,
  ),
  CommentModel(
    id: "4",
    comment: 'the first comment is the best one and the most liked one ',
    author: AuthorModel(
      id: '1',
      name: 'No Name',
      avatar:
          'https://cdn.pixabay.com/photo/2017/04/04/17/55/people-2202470_640.jpg',
    ),
    createdAt: '2d',
    voteCount: 1,
    voteType: VoteType.none,
  )
];
