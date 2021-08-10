[app/sources/224066827.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:8298b68cca52e935340a3494b860ec5dd86c01a59090bbb2d4e1db87f15ccc47" [label="/bin/sh -c apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62     && echo \"deb http://nginx.org/packages/mainline/debian/ jessie nginx\" >> /etc/apt/sources.list     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y                         ca-certificates                         nginx=${NGINX_VERSION}                         gettext-base     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:30e1b75b89ed18c5eec323820d1635b683157e3b5332a991c0229a1f41a14ee4" [label="/bin/sh -c rm /etc/nginx/nginx.conf" shape="box"];
  "sha256:2c2990ffc65cf5fac8b5d0554d87cdea6c11ce8d22cca404a13d0840ed2dbfaf" [label="/bin/sh -c rm /etc/nginx/conf.d/default.conf" shape="box"];
  "sha256:c888fb7b17e520676369a329545183f6f8d5fe7eb554245af84c01909d376bed" [label="sha256:c888fb7b17e520676369a329545183f6f8d5fe7eb554245af84c01909d376bed" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:8298b68cca52e935340a3494b860ec5dd86c01a59090bbb2d4e1db87f15ccc47" [label=""];
  "sha256:8298b68cca52e935340a3494b860ec5dd86c01a59090bbb2d4e1db87f15ccc47" -> "sha256:30e1b75b89ed18c5eec323820d1635b683157e3b5332a991c0229a1f41a14ee4" [label=""];
  "sha256:30e1b75b89ed18c5eec323820d1635b683157e3b5332a991c0229a1f41a14ee4" -> "sha256:2c2990ffc65cf5fac8b5d0554d87cdea6c11ce8d22cca404a13d0840ed2dbfaf" [label=""];
  "sha256:2c2990ffc65cf5fac8b5d0554d87cdea6c11ce8d22cca404a13d0840ed2dbfaf" -> "sha256:c888fb7b17e520676369a329545183f6f8d5fe7eb554245af84c01909d376bed" [label=""];
}

