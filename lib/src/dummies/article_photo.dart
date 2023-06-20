import 'package:models_base/common.dart';
import 'package:models_base/src/base/article_photo_base.dart';

class ArticlePhotoDummy extends ArticlePhotoAbstract {
  ArticlePhotoDummy()
      : super(
          calibreId: 1,
          id: 1,
          source: PhotoSource.unknown,
          path: 'path',
        );
}
