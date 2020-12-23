# dotfiles

## dotfileを入れる前にやっておくこと
- 以下をインストール
  - [chrome](https://support.google.com/chrome/answer/95346?co=GENIE.Platform%3DDesktop&hl=ja)
  - chromeでの各ユーザログイン
  - [iterm2](https://www.iterm2.com/)
  - [mac用JDK](https://www.oracle.com/technetwork/java/javase/downloads/index.html)
  - [docker desktop](https://www.docker.com/blog/download-and-try-the-tech-preview-of-docker-desktop-for-m1/)
  - [vscode](https://azure.microsoft.com/ja-jp/products/visual-studio-code/)
- ~/.ssh 以下の設定を移行

- `xcode-select --install`
  - [xcodeとmacバージョン対応表](https://qiita.com/thinkalot/items/1dfdba642906c1bf1fd2)
  - コマンドラインでのインストールに失敗したら[公式](https://idmsa.apple.com/IDMSWebAuth/signin?appIdKey=891bd3417a7776362562d2197f89480a8547b108fd934911bcbea0110d07f757&path=%2Fdownload%2Fmore%2F&rv=1)からインストール
- 文字切り替えのショートカットを変更
  - キーボード>ショートカット>入力ソース
  
  <img width="612" alt="スクリーンショット 2020-07-16 13 23 06" src="https://user-images.githubusercontent.com/3523368/87626535-8713c480-c767-11ea-9c19-c246b2e325b2.png">

  
- ライブ変換を無効化
  - システム環境設定>キーボード>入力ソース>ライブ変換のチェックを外す
- コンソールの表示名を変更
  - システム環境設定＞共有＞コンピュータ名を変更
- スクリーンショットの保存先をpictureに変更
  - `defaults write com.apple.screencapture location ~/Pictures/`
- ピクチャを[よく使う項目に追加](https://pc-karuma.net/mac-finder-sidebar-favorites-folder-add/)
  - サイドバーで、「ピクチャ」フォルダを「よく使う項目」サイドバーにドラッグ
- [ユーザ辞書を追加](https://pc-karuma.net/mac-user-dictionary/)
- キーボード＞キーボード＞修飾キーでcapslockの動作を無効化
- キーボード>入力ソースを以下だけにする
<img width="631" alt="スクリーンショット 2020-10-07 15 14 22" src="https://user-images.githubusercontent.com/3523368/95294340-0c62cd00-08b0-11eb-81f1-a2b09b674183.png">

- iterm2のスクロールを無制限に
  - preferences>profiles>terminalで「Unlimited Scrollback」にチェック
- ホットコーナーでロック
  - システム環境設定＞デスクトップとスクリーンセーバ＞スクリーンセーバ＞ホットコーナー

## 実行

```
bash -c "$(curl -fsSL https://raw.github.com/chaingng/dotfiles/master/dotfiles)" -- -f -s deploy
```

## Initialize

```
$ ~/dotfiles/dotfiles initialize
```

## Deploy dotfiles

```
$ ~/dotfiles/dotfiles deploy
```
