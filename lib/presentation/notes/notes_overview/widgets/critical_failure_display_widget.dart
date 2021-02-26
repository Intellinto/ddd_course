import 'package:flutter/material.dart';
import 'package:notes_firebase_ddd_course/domain/notes/note_failure.dart';

class CiriticalFailureDisplay extends StatelessWidget {
  final NoteFailure failure;

  const CiriticalFailureDisplay({Key key, @required this.failure})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            '😱',
            style: TextStyle(fontSize: 100),
          ),
          Text(
            failure.maybeMap(
                insuffecientPermissions: (_) => 'Insufficient permissions',
                orElse: () => 'Unexpected error.'),
            style: const TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
