import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:integra_espoir/03-buro-rco/database/isar_buro_rco.dart';

class BuroRcoIsarState {
  final bool isLoading;
  final List<IsarBuroRco> dataBuroRco;

  BuroRcoIsarState({
    this.isLoading = false,
    this.dataBuroRco = const [],
  });

  BuroRcoIsarState copyWith({
    bool? isLoading,
    List<IsarBuroRco>? dataBuroRco,
  }) =>
      BuroRcoIsarState(
        isLoading: isLoading ?? this.isLoading,
        dataBuroRco: dataBuroRco ?? this.dataBuroRco,
      );
}

class BuroRcoIsarNotifier extends StateNotifier<BuroRcoIsarState> {
  BuroRcoIsarNotifier() : super(BuroRcoIsarState());

  getDatabaseIsar({required List<IsarBuroRco> dataBuroRco}) async {
    state = state.copyWith(isLoading: true);
    await Future.delayed(const Duration(milliseconds: 500));
    state = state.copyWith(dataBuroRco: dataBuroRco);
    state = state.copyWith(isLoading: false);
  }
}

final buroRcoIsarProvider = StateNotifierProvider<BuroRcoIsarNotifier, BuroRcoIsarState>((ref) => BuroRcoIsarNotifier());
