VERSION=v1.0

sudo docker build -t mizucoffee/static_serve:${VERSION}-node12 -f node12.Dockerfile .
sudo docker build -t mizucoffee/static_serve:${VERSION}-node14 -f node14.Dockerfile .
sudo docker build -t mizucoffee/static_serve:${VERSION}-node16 -f node16.Dockerfile .
