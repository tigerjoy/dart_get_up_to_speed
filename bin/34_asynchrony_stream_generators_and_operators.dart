void main(List<String> args) {
  // If we want to call API's and then
  // return it's responses in its own stream
  // then we can use a language feature called
  // Stream Generators to create our own
  // stream.
  createMessageString().listen((event) {
    print("First: $event");
  });

  createMessageString().map((message) => message.toUpperCase()).listen((event) {
    print("Second: $event");
  });

  createMessageString()
      .map((message) => message.toUpperCase())
      .where((message) => message.length > 7)
      .listen((event) {
        print("Third: $event");
      });
}

// async --> returns Future (one off value)
// async* --> returns Streams (multiple values)
// Streams can be thought of as asynchronous
// lists, that has asynchronous objects that
// arrive in a period of time.
Stream<String> createMessageString() async* {
  // If we use return, then the entire
  // function terminates.
  // return 'Function terminates';

  // We use the yield keyword to return
  // something from the function then
  // the function does not stop, until the
  // last yield statement is run.

  yield 'Hello!';
  await Future.delayed(const Duration(seconds: 1));
  yield 'Have you heard of.....';
  await Future.delayed(const Duration(seconds: 1));
  yield 'FLUTTER?';
}
