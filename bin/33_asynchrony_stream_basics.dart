Future<void> main(List<String> args) async {
  // Produces events asynchronously
  // every second
  final myPeriodicStream = Stream.periodic(const Duration(seconds: 1));
  final subscription = myPeriodicStream.listen((event) {
    print('A second has passed');
  });
  await Future.delayed(const Duration(seconds: 5));
  subscription.cancel();

  // Prints A second has passed 5 times
  // and then stops.
}

// Futures are for handling one time async
// events.

// Streams are for handling multiple async
// events over a period of time without
// blocking (continuous async events) the
// main thread / isolate.

// Many packages like RxDart help us
// with creating and subscribing to a stream.
