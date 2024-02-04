import 'package:loggy/loggy.dart' as loggy;
import 'package:stack_trace/stack_trace.dart';

void debug(dynamic message, {Object? classType}) {
  final type = classType ?? getFileName();
  loggy.logDebug('$type | $message');
}

void info(dynamic message, {Object? classType}) {
  final type = classType ?? getFileName();
  loggy.logInfo('$type | $message');
}

void warning(dynamic message, {Object? classType}) {
  final type = classType ?? getFileName();
  loggy.logWarning('$type | $message');
}

void error(dynamic message, {Object? classType}) {
  final type = classType ?? getFileName();
  loggy.logError('$type | $message');
}

/*
  Define regex for each entry in the stack

  group 0: full line
  group 1: stack index
  group 2: function name
  group 3: package
  group 4: file name
  group 5: line number
  group 6: column number
*/
String getFileName() {
  try {
    // var frames = StackTrace.current.toString();
    // final framesParsed = Frame.parseVM(frames);
    // final tag = framesParsed.tag;
    final currentChains = Chain.current(3);
    Frame? coreChain = currentChains.traces.first.frames.first;
    for (final c in currentChains.traces) {
      if (c.frames.first.isCore) coreChain = c.frames.first;
    }

    return coreChain?.uri.path ?? '';
  } catch (e) {
    return '';
  }
}
