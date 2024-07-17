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
                  child: Text(
                e.toString(),
                style: TextStyle(color: errorColor),
              )),
      loading:
          loading ?? () => const Center(child: CircularProgressIndicator()),
    );
  }
}

