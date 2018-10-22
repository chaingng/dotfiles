# dotfiles

## Before install
- install　followings
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

## Initialize

```
$ ~/dotfiles/dotfiles initialize
```

## Deploy dotfiles

```
$ ~/dotfiles/dotfiles deploy
```
