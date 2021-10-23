#!/bin/bash

if [ -n "$GITHUB_REPO" ]; then
  rm -rf /website
  git clone "$GITHUB_REPO" /website
fi

cd "/website/"
if [ -n "$BASE_DIR" ]; then
  cd "$BASE_DIR"
fi

if [ -n "$BUILD_CMD" ]; then
  sh -c "$BUILD_CMD"
fi

cd "/website/"
if [ -n "$PUBLISH_DIR" ]; then
  cd "$PUBLISH_DIR"
fi

cp -r * /usr/share/nginx/html/

nginx -g "daemon off;"