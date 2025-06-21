void main(List<String> args) {
  bool isSignedIn = true;

  <String>[
    'This is a fake content.',
    if (isSignedIn) 'Signed In' else 'Sign Out',
  ];

  final x = <String>[
    for (int i = 0; i < 5; i++) i.toString(),
    for (final number in [1, 2, 3]) number.toString(),
  ];
  print(x);

  final list1 = ['hello', 'there'];
  final list2 = ['whats', 'up'];
  final combined = <String>[...list1, ...list2];
  print(combined);
}
