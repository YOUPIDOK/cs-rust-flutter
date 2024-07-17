import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

part 'toilettes_repository.g.dart';

class ToiletteRepository {
  final String host =
      '192.168.1.120:8000'; // Note: No http:// prefix for Uri.http

  bool isLoading = false;

  ToiletteRepository();

  Future<List<dynamic>> fetchToilette() async {
    try {
      isLoading = true;
      final Uri uri = Uri.http(host, '/graphql');
      final response = await http.post(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'query': '''
          {
            getToilets {
              id,
              lat,
              long,
              name,
              companiesId,
              isMaintenance
            }
          }
          '''
        }),
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);

        return data['data']['getToilets'] as List<dynamic> ?? [];
      } else {
        return [];
      }
    } catch (e) {
      rethrow;
    } finally {
      isLoading = false;
    }
  }




}

@riverpod
Future<List<dynamic>> allToilette(AllToiletteRef ref) async {
  ToiletteRepository toiletteRepository = ToiletteRepository();
  return await toiletteRepository.fetchToilette();
}
