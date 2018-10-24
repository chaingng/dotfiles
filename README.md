# dotfiles

## Before install
- install followings
  - [iterm2](https://www.iterm2.com/)
  - [mac用JDK](https://www.oracle.com/technetwork/java/javase/downloads/index.html)
  - [totalspaces2](https://totalspaces.binaryage.com/)
- `xcode-select --install`
- 文字切り替えのショートカットを変更
  - キーボード＞入力ソース
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

## Initialize

```
$ ~/dotfiles/dotfiles initialize
```

## Deploy dotfiles

```
$ ~/dotfiles/dotfiles deploy
```
