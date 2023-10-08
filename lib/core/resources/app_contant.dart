import 'package:reddit/core/resources/assets_manager.dart';
import 'package:reddit/features/posts/data/models/comment_filter_model.dart';
import 'package:reddit/features/posts/data/models/comment_option_model.dart';

String userId = '99999999';


List<CommentFilterModel> filters = [
  CommentFilterModel(
    id: "1",
    icon: AssetsManager.rocket,
    name: 'Best',
    selected: false,
  ),
  CommentFilterModel(
    id: "1",
    icon: AssetsManager.newIc,
    name: 'New',
    selected: false,
  ),
  CommentFilterModel(
    id: "1",
    icon: AssetsManager.growth,
    name: 'Top',
    selected: false,
  ),
  CommentFilterModel(
    id: "1",
    icon: AssetsManager.microphone,
    name: 'Q&A',
    selected: false,
  ),
  CommentFilterModel(
    id: "1",
    icon: AssetsManager.sword,
    name: 'Controversial',
    selected: false,
  ),
];

List<CommentOptionModel> options = [
  CommentOptionModel(
    id: 1,
    icon: AssetsManager.shareIc,
    name: 'Share',
  ),
  CommentOptionModel(
    id: 2,
    icon: AssetsManager.saveIc,
    name: 'Save',
  ),
  CommentOptionModel(
    id: 3,
    icon: AssetsManager.notifications,
    name: 'Stop reply notifications',
  ),
  CommentOptionModel(
    id: 4,
    icon: AssetsManager.copyPaste,
    name: 'Copy text',
  ),
  CommentOptionModel(
    id: 5,
    icon: AssetsManager.collapsed,
    name: 'Collapse thread',
  ),
];

List<CommentOptionModel> myOptions = [
  CommentOptionModel(
    id: 6,
    icon: AssetsManager.pen,
    name: 'Edit',
  ),
  CommentOptionModel(
    id: 7,
    icon: AssetsManager.delete,
    name: 'Delete',
  ),
];
