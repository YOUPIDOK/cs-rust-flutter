import 'package:bazzile/src/common_widgets/data_display/error/error_message_widget.dart';
import 'package:bazzile/src/common_widgets/feedback/progress/staggered_dots_wave_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AsyncValueWidget<T> extends StatelessWidget {
  final AsyncValue<T> value;
  final Widget Function(T) data;
  final Widget Function()? loading;
  final Widget Function(Object, StackTrace)? error;
  final Color? errorColor;

  const AsyncValueWidget(
      {super.key,
      required this.value,
      required this.data,
      this.loading,
      this.error,
      this.errorColor});

  @override
  Widget build(BuildContext context) {
    return value.when(
      data: data,
      error: error ??
          (e, st) => Center(
              child: ErrorMessageWidget(e.toString(), color: errorColor)),
      loading: loading ??
          () => const Center(child: StaggeredDotsWaveProgressIndicator()),
    );
  }
}

/// Sliver equivalent of [AsyncValueWidget]
class AsyncValueSliverWidget<T> extends StatelessWidget {
  const AsyncValueSliverWidget(
      {super.key, required this.value, required this.data});
  final AsyncValue<T> value;
  final Widget Function(T) data;

  @override
  Widget build(BuildContext context) {
    return value.when(
      data: data,
      loading: () => const SliverToBoxAdapter(
          child: Center(child: StaggeredDotsWaveProgressIndicator())),
      error: (e, st) => SliverToBoxAdapter(
        child: Center(child: ErrorMessageWidget(e.toString())),
      ),
    );
  }
}
