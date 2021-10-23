# static_serve

## 環境変数

```env
BASE_DIR=/
BUILD_CMD="npm i; npx glup"
PUBLISH_DIR=build
GIT_REPO=https://github.com/mizucoffee/mizu.coffee
```

## 使用方法

`GIT_REPO`環境変数にリポジトリURLを指定するか、`/website`にWebサイトをマウントしてください。
両方に設定がされている場合は`GIT_REPO`環境変数が優先されます。

## ビルド

```bash
./build.sh
```
