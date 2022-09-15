import 'package:flutter_test/flutter_test.dart';

void main() {
  Future<List<PostModel>> fetchAllPosts({
    JSON? queryParameters,
  }) async {
    return _apiService.getCollectionData<PostModel>(
      // 1
      endpoint: ApiEndpoint.posts(PostEndpoint.BASE), // 2
      queryParams: queryParameters, // 3
      converter: PostModel.fromJson, // 4
    );
  }
}
