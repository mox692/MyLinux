## chap1

* gccの-v option
  * コンパイル、リンクまでのoptionを細かく表示することができる
* sizeコマンド
  * `$ size hello` で実行ファイルのデータのセグメントを確認できる
* objdumpコマンド
  * objectfileのallocされているsizeとかメモリを確認できる
  * elf形式の各セクションを確認することができる
* hexdumpコマンド
  * `$ objdump -h hello `でfileをbyteコードとして履いてくれる
  * -CオプションでASCIIも出力される
  * とにかくbyte codeで全て見たい！って時は使える
  * どんなfileでも文字化けすることはない？？
* nmコマンド
  * objファイルのシンボルを抜き出して表示する。
  * シンボルのタイプも一緒に表示してくれる