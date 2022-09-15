import 'package:hbo_network/response_model.dart';

import '../../helpers/typedefs.dart';

abstract class ApiInterface {
  Future<List<T>> getCollectionData<T>({
    required String endpoint,
    bool requiresAuthToken = true,
    required T Function(JSON responseBody) converter,
  });

  @override
  Future<T> getDocumentData<T>({
    required String endpoint,
    required T Function(JSON response) converter,
  });

  Future<T> setData<T>({
    required String endpoint,
    required JSON data,
    bool requiresAuthToken = true,
    required T Function(ResponseModel<JSON> response) converter,
  });

  Future<List<T>> setAndGetCollectionData<T>({
    required String endpoint,
    required JSON data,
    required T Function(JSON response) converter,
  });

  Future<T> updateData<T>({
    required String endpoint,
    required JSON data,
    bool requiresAuthToken = true,
    required T Function(ResponseModel<JSON> response) converter,
  });

  Future<T> deleteData<T>({
    required String endpoint,
    JSON? data,
    bool requiresAuthToken = true,
    required T Function(ResponseModel<JSON> response) converter,
  });
}
