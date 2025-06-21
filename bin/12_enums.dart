enum AccountType { free, premium, vip }

void main(List<String> args) {
  const userAccountType = AccountType.free;

  AccountType accountType = AccountType.premium;
  print(accountType.index);

  print(AccountType.values);

  switch (userAccountType) {
    case AccountType.free:
      print('0 USD');
      break;
    case AccountType.premium:
      print('20 USD');
      break;
    case AccountType.vip:
      print('40 USD');
      break;
    // Not required since all the types are
    // covered
    // default:
    //   print('10000 cr');
    //   break;
  }
}
