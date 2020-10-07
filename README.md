# dotfiles

## dotfileを入れる前にやっておくこと
- 以下をインストール
  - [chrome](https://support.google.com/chrome/answer/95346?co=GENIE.Platform%3DDesktop&hl=ja)
  - chromeでの各ユーザログイン
  - [iterm2](https://www.iterm2.com/)
  - [mac用JDK](https://www.oracle.com/technetwork/java/javase/downloads/index.html)
  - [totalspaces2](https://totalspaces.binaryage.com/)

- openjdkのインストール

最新バージョンは[ここ](http://jdk.java.net/)から確認

```
curl -o https://download.java.net/java/ga/jdk11/openjdk-11_osx-x64_bin.tar.gz
tar xvzf openjdk-11+28_osx-x64_bin.tar.gz
sudo mv jdk-11.jdk /Library/Java/JavaVirtualMachines/
/usr/libexec/java_home  -V
export JAVA_HOME=`/usr/libexec/java_home -v 11`
java -version
```

- `xcode-select --install`
- 文字切り替えのショートカットを変更
  - キーボード＞入力ソース
  
  <img width="612" alt="スクリーンショット 2020-07-16 13 23 06" src="https://user-images.githubusercontent.com/3523368/87626535-8713c480-c767-11ea-9c19-c246b2e325b2.png">

  
- ライブ変換を無効化
  - システム環境設定>キーボード>入力ソース>ライブ変換のチェックを外す
- コンソールの表示名を変更
  - システム環境設定＞共有＞コンピュータ名を変更
- スクリーンショットの保存先をpictureに変更
  - `defaults write com.apple.screencapture location ~/Pictures/`
- [ユーザ辞書を追加](https://pc-karuma.net/mac-user-dictionary/)
- 入力ソース切り替えにカタカナを表示させない
  - キーボード＞入力ソースでカタカナのチェックを外す
- capslockを無効化する
  - キーボード＞キーボード＞修飾キーでcapslockの動作を無効化
- ピクチャをよく使う項目に入れる
  - サイドバーで、「ピクチャ」フォルダを「よく使う項目」サイドバーにドラッグ
- iterm2のスクロールを無制限に
  - preferences>profiles>terminalで「Unlimited Scrollback」にチェック

## Initialize

```
$ ~/dotfiles/dotfiles initialize
```

## Deploy dotfiles

```
$ ~/dotfiles/dotfiles deploy
```
