import 'package:app/src/api/graphql/graphql_client.dart';
import 'package:app/src/features/toilettes/data/graphql/__generated__/toilettes.data.gql.dart';
import 'package:app/src/features/toilettes/data/graphql/__generated__/toilettes.req.gql.dart';
import 'package:app/src/features/toilettes/data/graphql/__generated__/toilettes.var.gql.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'toilettes_repository.g.dart';

class ToilettesRepository {
  ToilettesRepository(this.ref);
  final Ref ref;

  bool isLoading = false;

  Future<OperationResponse<GAllToilettesData, GAllToilettesVars>>
      fetchToilettes() {
    final client = ref.read(graphqlClientProvider);
    final req = GAllToilettesReq(
      (b) => b
        ..vars.lat = 45.0
        ..vars.long = 4.0
        ..vars.radiusKm = 500,
    );

    return client.request(req).firstWhere(
        (element) => !element.loading || element.graphqlErrors != null);
  }
}

@riverpod
ToilettesRepository toilettesRepository(ToilettesRepositoryRef ref) {
  return ToilettesRepository(ref);
}

@riverpod
Future<OperationResponse<GAllToilettesData, GAllToilettesVars>> toilettesFuture(
    ToilettesFutureRef ref) {
  final toilettesRepository = ref.watch(toilettesRepositoryProvider);
  return toilettesRepository.fetchToilettes();
}
