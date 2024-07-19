import 'dart:developer';

import 'package:app/src/api/graphql/__generated__/schema.schema.gql.dart';
import 'package:app/src/api/graphql/graphql_client.dart';
import 'package:app/src/constants/api.dart';
import 'package:app/src/features/toilettes/data/graphql/__generated__/toilettes.data.gql.dart';
import 'package:app/src/features/toilettes/data/graphql/__generated__/toilettes.req.gql.dart';
import 'package:app/src/features/toilettes/data/graphql/__generated__/toilettes.var.gql.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gql_websocket_link/gql_websocket_link.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

part 'toilettes_repository.g.dart';

class ToilettesRepository {
  ToilettesRepository(this.ref);
  final Ref ref;

  bool isLoading = false;

  Future<OperationResponse<GToilettesData, GToilettesVars>> fetchToilettes() {
    final client = ref.read(graphqlClientProvider);
    final req = GToilettesReq();

    return client.request(req).firstWhere((element) => !element.loading || element.graphqlErrors != null);
  }

  Future<OperationResponse<GNearToilettesData, GNearToilettesVars>> fetchNearToilettes(GNearToilettesVarsBuilder vars) {
    final client = ref.read(graphqlClientProvider);
    final req = GNearToilettesReq((b) => b..vars = vars);

    return client.request(req).firstWhere((element) => !element.loading || element.graphqlErrors != null);
  }

  Stream<OperationResponse<GToiletteSubscriptionData, GToiletteSubscriptionVars>> watchToilette(GToiletteSubscriptionVarsBuilder vars) {
    log('toiletteSubscription');
    final link = WebSocketLink(
      null,
      autoReconnect: true,
      reconnectInterval: const Duration(seconds: 1),
      channelGenerator: () => WebSocketChannel.connect(Uri.parse(graphqlWsApiUri), protocols: ['graphql-ws']),
    );
    final client = Client(link: link);
    final req = GToiletteSubscriptionReq((b) => b..vars = vars);
    return client.request(req);
  }

  Future<OperationResponse<GupdateDoorStateData, GupdateDoorStateVars>> updateDoorState(GupdateDoorStateVarsBuilder vars) async {
    final client = ref.read(graphqlClientProvider);
    final req = GupdateDoorStateReq((b) => b..vars = vars);
    return client.request(req).firstWhere((element) => !element.loading || element.graphqlErrors != null);
  }

  Future<OperationResponse<GtoggleLockStateData, GtoggleLockStateVars>> toggleLockState(GtoggleLockStateVarsBuilder vars) async {
    final client = ref.read(graphqlClientProvider);
    final req = GtoggleLockStateReq((b) => b..vars = vars);
    return client.request(req).firstWhere((element) => !element.loading || element.graphqlErrors != null);
  }
}

@riverpod
ToilettesRepository toilettesRepository(ToilettesRepositoryRef ref) {
  log('toilettesRepository');
  return ToilettesRepository(ref);
}

@riverpod
Future<OperationResponse<GToilettesData, GToilettesVars>> toilettesFuture(ToilettesFutureRef ref) {
  final toilettesRepository = ref.watch(toilettesRepositoryProvider);
  return toilettesRepository.fetchToilettes();
}

@riverpod
Future<OperationResponse<GNearToilettesData, GNearToilettesVars>> nearToilettesFuture(NearToilettesFutureRef ref, GNearToilettesVarsBuilder vars) {
  final toilettesRepository = ref.watch(toilettesRepositoryProvider);
  return toilettesRepository.fetchNearToilettes(vars);
}

@riverpod
Stream<OperationResponse<GToiletteSubscriptionData, GToiletteSubscriptionVars>> toiletteSubscriptionStream(ToiletteSubscriptionStreamRef ref, String id) {
  final toilettesRepository = ref.watch(toilettesRepositoryProvider);
  return toilettesRepository.watchToilette(GToiletteSubscriptionVars((b) => b.id = GUuid(id).toBuilder()).toBuilder());
}
