
import 'dart:math';
import 'package:crypto/crypto.dart' as crypto;


Future<String> getBytes() {
  final r = new Random();
  final bs = new List<int>.generate(256, (i) => r.nextInt(255));
  return crypto.CryptoUtils.bytesToHex(bs);
}

main() {
  print(
"""

┏━ ┏━┃┏━┃━┏┛━━┃┏━┛┃ ┃┏━┛
┃ ┃┏━┃┏┏┛ ┃ ┏━┛┏━┛ ┛ ┏━┛
━━ ┛ ┛┛ ┛ ┛ ━━┛━━┛┛ ┛━━┛
""");
  print('I am Testing standard lib (math) and external (crypto) dependencies.');
  print('--');
  print(getBytes());
  print('--');
  print('I tested them. Pub works. Goodbye, world!');
}