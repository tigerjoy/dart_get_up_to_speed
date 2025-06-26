import 'package:http/http.dart';

// To be able to use await keyword inside
// a function, we need to mark the function
// async.

// We should make the return type Future as
// well, this way the async function can be
// awaited by other functions.
Future<void> main(List<String> args) async {
  // When using await, only this
  // function will remain paused,
  // but the whole app will continue
  // to run.
  // await asyncMethod();

  // We will use the http package to
  // send GET requests to the API URL
  // https://fakestoreapi.com/products
  // posts

  // It returns a Future (like a promise)
  // meaning this will resolve into a value
  // in a later point in time

  // await keywords waits for the future
  // to be resolved

  try {
    final result = await Client().get(
      Uri.parse('https://fakestoreapi.com/products'),
    );

    print(result);
    print(result.body);
  } catch (e) {
    print('error!');
  }

  // There is a lower level way of handling
  // Futures without making use of async await
  // keywords provided by the language
  //(higher level language feature)
  Client()
      .get(Uri.parse('https://fakestoreapi.com/products'))
      .then((response) => print(response.body))
      .catchError((e) => print('error $e!'));
}

// All the code before were synchronous
// The statements run one after the other.
// When calling the server API for a response
// it involves a lot of delay, and the delay
// is not defined. 

// As a result we need to run the code only
// after the network call is over.

// If we wait for this Network call on the
// main isolate / thread and the network
// call takes 5s to complete, then the app
// would remain frozen for 5s, and after the
// UI will become responsive.

