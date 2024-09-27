import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:integra_espoir/04-consulta-cartera/database/isar_consulta_cartera.dart';

class ConsultaCarteraIsarState {
  final bool isLoading;
  final List<IsarConsultaCartera> data;

  ConsultaCarteraIsarState({
    this.isLoading = false,
    this.data = const [],
  });

  ConsultaCarteraIsarState copyWith({
    bool? isLoading,
    List<IsarConsultaCartera>? data,
  }) =>
      ConsultaCarteraIsarState(
        isLoading: isLoading ?? this.isLoading,
        data: data ?? this.data,
      );
}

class ConsultaCarteraIsarNotifier extends StateNotifier<ConsultaCarteraIsarState> {
  ConsultaCarteraIsarNotifier() : super(ConsultaCarteraIsarState());

  getDatabaseIsar({required List<IsarConsultaCartera> data}) async {
    state = state.copyWith(isLoading: true);
    await Future.delayed(const Duration(milliseconds: 500));
    state = state.copyWith(data: data);
    state = state.copyWith(isLoading: false);
  }
}

final consultaCarteraIsarProvider =
    StateNotifierProvider<ConsultaCarteraIsarNotifier, ConsultaCarteraIsarState>((ref) => ConsultaCarteraIsarNotifier());
