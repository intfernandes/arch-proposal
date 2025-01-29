import 'package:core/services/adapters/http/i_http_client.dart';
import 'package:result_dart/result_dart.dart';

class DioClient implements IHttpClient {
  @override
  Future<dynamic> delete(String path) {
    return Future.value(Success({}));
  }

  @override
  Future<dynamic> download(String path) {
    return Future.value(Success(''));
  }

  @override
  Future<dynamic> get(String path) {
    return Future.value(Success(''));
  }

  @override
  Future<dynamic> post(String path, Map payload) async {
    if (path == '/products') {
      await Future.delayed(Duration(seconds: 3));
      return productsApiResponse;
    }
    if (path == '/deals') {
      await Future.delayed(Duration(seconds: 3));
      return dealApiResponse;
    }

    return {};
  }

  @override
  Future<dynamic> put(String path, Map payload) {
    return Future.value(Success(''));
  }

  @override
  Map get headers => {};

  @override
  void addToHeaders(Map headers) {
    this.headers.addAll(headers);
  }
}

final productsApiResponse = [
  {
    'id': '1',
    'name': 'Product 1',
    'description': 'Description 1',
    'unusedData': null
  },
  {
    'id': '2',
    'name': 'Product 2',
    'description': 'Description 2',
    'unusedData': null
  },
  {
    'id': '3',
    'name': 'Product 3',
    'description': 'Description 3',
    'unusedData': null
  },
  {
    'id': '4',
    'name': 'Product 4',
    'description': 'Description 4',
    'unusedData': null
  },
  {
    'id': '5',
    'name': 'Product 5',
    'description': 'Description 5',
    'unusedData': null
  },
  {
    'id': '6',
    'name': 'Product 6',
    'description': 'Description 6',
    'unusedData': null
  },
  {
    'id': '7',
    'name': 'Product 7',
    'description': 'Description 7',
    'unusedData': null
  },
  {
    'id': '8',
    'name': 'Product 8',
    'description': 'Description 8',
    'unusedData': null
  },
  {
    'id': '9',
    'name': 'Product 9',
    'description': 'Description 9',
    'unusedData': null
  },
  {
    'id': '10',
    'name': 'Product 10',
    'description': 'Description 10',
    'unusedData': null
  },
];

final List<dynamic> dealApiResponse = [
  {
    'id': '1',
    'name': 'Deal 1',
    'observation': 'Observation 1',
    'status': 'Status 1',
    'startDate': '2021-01-01',
    'endDate': '2021-01-31',
    'createdAt': '2021-01-01',
    'updatedAt': '2021-01-01',
    'deletedAt': '',
  },
  {
    'id': '2',
    'name': 'Deal 2',
    'observation': 'Observation 2',
    'status': 'Status 2',
    'startDate': '2021-02-01',
    'endDate': '2021-02-28',
    'createdAt': '2021-02-01',
    'updatedAt': '2021-02-01',
    'deletedAt': '',
  },
  {
    'id': '3',
    'name': 'Deal 3',
    'observation': 'Observation 3',
    'status': 'Status 3',
    'startDate': '2021-03-01',
    'endDate': '2021-03-31',
    'createdAt': '2021-03-01',
    'updatedAt': '2021-03-01',
    'deletedAt': '',
  },
  {
    'id': '4',
    'name': 'Deal 4',
    'observation': 'Observation 4',
    'status': 'Status 4',
    'startDate': '2021-04-01',
    'endDate': '2021-04-30',
    'createdAt': '2021-04-01',
    'updatedAt': '2021-04-01',
    'deletedAt': '',
  },
  {
    'id': '5',
    'name': 'Deal 5',
    'observation': 'Observation 5',
    'status': 'Status 5',
    'startDate': '2021-05-01',
    'endDate': '2021-05-31',
    'createdAt': '2021-05-01',
    'updatedAt': '2021-05-01',
    'deletedAt': '',
  },
  {
    'id': '6',
    'name': 'Deal 6',
    'observation': 'Observation 6',
    'status': 'Status 6',
    'startDate': '2021-06-01',
    'endDate': '2021-06-30',
    'createdAt': '2021-06-01',
    'updatedAt': '2021-06-01',
    'deletedAt': '',
  },
  {
    'id': '7',
    'name': 'Deal 7',
    'observation': 'Observation 7',
    'status': 'Status 7',
    'startDate': '2021-07-01',
    'endDate': '2021-07-31',
    'createdAt': '2021-07-01',
    'updatedAt': '2021-07-01',
    'deletedAt': '',
  },
  {
    'id': '8',
    'name': 'Deal 8',
    'observation': 'Observation 8',
    'status': 'Status 8',
    'startDate': '2021-08-01',
    'endDate': '2021-08-31',
    'createdAt': '2021-08-01',
    'updatedAt': '2021-08-01',
    'deletedAt': '',
  },
  {
    'id': '9',
    'name': 'Deal 9',
    'observation': 'Observation 9',
    'status': 'Status 9',
    'startDate': '2021-09-01',
    'endDate': '2021-09-30',
    'createdAt': '2021-09-01',
    'updatedAt': '2021-09-01',
    'deletedAt': '',
  },
  {
    'id': '10',
    'name': 'Deal 10',
    'observation': 'Observation 10',
    'status': 'Status 10',
    'startDate': '2021-10-01',
    'endDate': '2021-10-31',
    'createdAt': '2021-10-01',
    'updatedAt': '2021-10-01',
    'deletedAt': '',
  },
];
