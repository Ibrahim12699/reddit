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
List<VideoModel> videosList = [
  VideoModel(
    id: '1',
    title: 'Footballer for Liverpool FC. '
        '\n'
        'Egyptian Arabic: born 15 June 1992. He plays for Premier League club Liverpool and the Egypt national team. He plays as a forward.'
        '\n'
        'Egyptian King. YNWA. #LFC #YNWA #UCL #PL #EGY #ASRoma #CFC #FCBasel #ChelseaFC #Roma #LiverpoolFC #Egypt #Salah #MoSalah #MohamedSalah #Liverpool',
    videoUrl: AssetsManager.video1,
    commentsCount: "2.8k",
    likesCount: "1.4m",
    voteType: VoteType.none,
    author: AuthorModel(
      id: '1',
      name: 'Mo Salah',
      avatar:
          'https://scontent.fcai20-2.fna.fbcdn.net/v/t39.30808-6/415112630_968953824589575_8956224801862747014_n.jpg?_nc_cat=1&ccb=1-7&_nc_sid=5f2048&_nc_ohc=wEFhGMFnD8cAX8DuNDE&_nc_ht=scontent.fcai20-2.fna&oh=00_AfDN0vkgh4ltemEqt_A8Ix-BSV2gPbqW92KfsaS1wJhonA&oe=66057D47',
    ),
  ),
  VideoModel(
    id: '2',
    title: 'Mamdouh Mohammed Hassan Elssbiay'
        '\n'
        'born 16 September 1984, is an Egyptian IFBB Pro professional bodybuilder. He is a two time Mr. Olympia champion, winning in 2020 and 2021.',
    videoUrl: AssetsManager.video2,
    commentsCount: "255",
    likesCount: "50k",
    voteType: VoteType.none,
    author: AuthorModel(
      id: '1',
      name: 'Big Ramy',
      avatar:
          'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.6435-9/126295867_222260759259553_406677236625263520_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=5f2048&_nc_ohc=qRqh5xzlQHYAX-knpBM&_nc_ht=scontent-hbe1-1.xx&oh=00_AfCUrBFSm5yfbehh4LMu-VGC5ayqenD8z6xSWNGXGfg3eg&oe=662752BC',
    ),
  ),
  VideoModel(
    id: '3',
    title:
        'Al-Ka\'ba al-Musharrafa is a stone building at the center of Islam\'s most important mosque and holiest site, the Masjid al-Haram in Mecca, Saudi Arabia. It is considered by Muslims to be the Bayt Allah',
    videoUrl: AssetsManager.video3,
    commentsCount: "999",
    likesCount: "30k",
    voteType: VoteType.none,
    author: AuthorModel(
      id: '1',
      name: 'The Kaaba',
      avatar:
          'https://upload.wikimedia.org/wikipedia/commons/f/f3/The_Blackstone.jpg',
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
